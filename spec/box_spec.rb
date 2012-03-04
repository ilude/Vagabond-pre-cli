require 'vagabond'
require 'FileUtils'
require 'spec_helpers'

describe "Vagabond::Box" do
  describe "create" do
    before { delete_test_build }
    it "should have a name" do
      box = Vagabond::Box.create('rspec_test', Vagabond::Environment.new) do
        self.template = 'ubuntu-11.10-server-amd64'
      end
      box.name.should == 'rspec_test'
    end

    after { delete_test_build }
  end
end
