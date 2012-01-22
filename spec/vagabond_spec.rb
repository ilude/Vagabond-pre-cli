require 'vagabond'

describe Vagabond, ".virtualbox_installed?" do
  it "should return true when virtualbox is found" do
    Vagabond.virtualbox_installed?.should be_true
  end
end