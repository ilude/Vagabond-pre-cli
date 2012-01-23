require 'vagabond'

describe Vagabond, ".virtualbox_found?" do
  it "should return true when virtualbox is found" do
    Vagabond.virtualbox_found?.should be_true
  end
end