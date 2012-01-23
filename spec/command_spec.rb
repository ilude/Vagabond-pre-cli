require 'vagabond'

describe Vagabond::VM::Commands, ".version" do
  it "should not be empty" do
    Vagabond::VM::Commands.version.should_not be_empty
  end
end

describe Vagabond::VM::Commands, ".virtualbox_command" do
  context "in default context" do
    it "should return 'vboxmanage'" do
      Vagabond::VM::Commands.virtualbox_command.should eq('vboxmanage')
    end
  end

  context "when set to 'something_else'" do
    before { Vagabond::VM::Commands.virtualbox_command = 'something_else' }
    it "should return 'something_else" do
      Vagabond::VM::Commands.virtualbox_command.should eq('something_else')
    end
  end
end

