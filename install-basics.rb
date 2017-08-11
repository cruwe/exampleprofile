Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
    yum install -y rsync rubygems
  SHELL
end
