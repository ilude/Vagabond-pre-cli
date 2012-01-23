require 'vagabond'

describe "Vagabond::Box" do
  describe ".new" do
    it "should have a name" do
    box = Vagabond::Box.new('rspec_test')
    box.name.should == 'rspec_test'
  end
  end
 
  
end