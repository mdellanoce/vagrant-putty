require 'rubygems'

module VagrantPutty
  class Command < Vagrant::Command::Base
    register "putty", "PuTTY into the VM environment"

    def execute
      vagrant_path = Gem.loaded_specs['vagrant'].full_gem_path
      key = File.join vagrant_path, "keys", "vagrant.ppk"
      system("putty vagrant@localhost -i #{key} -P 2222")
    end
  end
end