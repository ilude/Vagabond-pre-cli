require 'vagabond'

describe Vagabond::Command, ".version" do
  it "should not be empty" do
    Vagabond::Command.version.should_not be_empty
  end
end

describe Vagabond::Command, ".virtualbox_command" do
  context "in default context" do
    it "should return 'vboxmanage'" do
      Vagabond::Command.virtualbox_command.should eq('vboxmanage')
    end
  end

  context "when set to 'something_else'" do
    before { Vagabond::Command.virtualbox_command = 'something_else' }
    it "should return 'something_else" do
      Vagabond::Command.virtualbox_command.should eq('something_else')
    end
  end
end

