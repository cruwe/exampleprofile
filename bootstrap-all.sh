#!/usr/bin/env bash

for container in $(kitchen list | awk '{print $1}' | grep BOOTSTRAP)
do
    echo ${container}
    kitchen create ${container} &

    while true; do
        echo "Waiting for ${container} to come up."
        lxc list | grep ${container} | grep "RUNNING"
        state=$?
        if [ ${state} -eq 0 ]; then
            break
        fi
        sleep 3
    done
    lxc exec ${container} -- mkdir /root/.ssh
    wait

    lxc exec ${container} -- yum update -y && \
    lxc exec  ${container} -- yum install -y openssh-server sudo rsync

    kitchen converge ${container}
    kitchen destroy ${container}
done
