source ENV['GEM_SOURCE'] || 'https://rubygems.org'
pupvers_s = ENV.key?('PUPPET_VERSION') ? ENV['PUPPET_VERSION'] : ['=3.8.7']

#-----------------------------------------------------------------------------
# ruby development dependencies
#-----------------------------------------------------------------------------
group :rubydev do
  gem 'json'
  gem 'rake', '< 12.0.0'
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter'
  gem 'rubocop-rspec'
end
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# puppet runtime dependencies
#-----------------------------------------------------------------------------
group :puppetrun do
  gem 'deep_merge'
  gem 'facter', '>= 2.0.0'
  gem 'librarian-puppet'
  gem 'puppet', pupvers_s
  gem 'r10k'
end
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# puppet development dependencies
#-----------------------------------------------------------------------------
group :puppetdev do
  gem 'metadata-json-lint'
  gem 'puppet-lint', '>= 2.0.0'
  gem 'puppetlabs_spec_helper', '>= 1.0.0'
  gem 'semantic_puppet'
end
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# puppet testing dependencies
#-----------------------------------------------------------------------------
group :puppettest do
  gem 'puppet-catalog-test'
  gem 'rspec-core'
  gem 'rspec-puppet', '>= 2.0.0'
  gem 'rspec_junit_formatter'
  gem 'serverspec'
end
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# test-kitchen testing dependencies
#-----------------------------------------------------------------------------
group :kitchen do
  gem 'busser'
  gem 'busser-serverspec'
  gem 'kitchen-docker'
  gem 'kitchen-lxd_cli'
  gem 'kitchen-puppet'
  gem 'kitchen-sync'
  gem 'kitchen-vagrant'
  gem 'test-kitchen'
end
#-----------------------------------------------------------------------------
