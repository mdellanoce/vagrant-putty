require File.expand_path("../lib/vagrant-putty/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-putty"
  s.version     = VagrantPutty::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Dellanoce"]
  s.email       = ["michael.dellanoce@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/vagrant-rake"
  s.summary     = "A Vagrant plugin to PuTTY into a VM"
  s.description = "A Vagrant plugin to PuTTY into a VM"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vagrant-putty"

  s.add_dependency "vagrant", "~> 0.8.7"
  s.add_development_dependency "bundler", ">= 1.0.0"

  #s.files        = `git ls-files`.split("\n")
  #s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end