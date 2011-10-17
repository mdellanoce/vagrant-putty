module VagrantPutty
  class Command < Vagrant::Command::Base
    register "putty", "PuTTY into the VM environment"
	
    def execute
      puts "putty vagrant@localhost -i C:\jruby-1.6.4\lib\ruby\gems\1.8\gems\vagrant-0.8.7\keys\vagrant.ppk -P 2222"
    end
  end
end