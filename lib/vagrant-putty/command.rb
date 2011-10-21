require 'rubygems'

module VagrantPutty
  class Command < Vagrant::Command::Base
    register "putty", "PuTTY into the VM environment"

    def execute
      system("putty vagrant@localhost -i #{self.class.ppk_path} -P 2222")
    end
    
    def self.ppk_path
      File.join Gem.loaded_specs['vagrant'].full_gem_path, "keys", "vagrant.ppk"
    end
  end
end