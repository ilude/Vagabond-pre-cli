require 'vagabond'

describe "Vagabond::Box" do
  describe "create" do
    it "should have a name" do
      box = Vagabond::Box.create('rspec_test','ubuntu-11.10-server-amd64', Vagabond::Environment.new)
      box.name.should == 'rspec_test'
    end
  end
 
  
end