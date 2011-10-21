require "test/unit"
require "mocha"
require "vagrant"
require "vagrant-putty"

class TestVagrantPuttyCommand < Test::Unit::TestCase
  include Vagrant::TestHelpers
  
  def setup
    clean_paths

    @klass = VagrantPutty::Command
    @env = vagrant_env
  end
  
  def test_execute
    expected = "putty vagrant@localhost -i #{@klass.ppk_path} -P 2222"
    
    @klass.any_instance.expects(:system)
    @klass.any_instance.expects(:system).with(expected)
    
    @env.cli("putty")
  end
end