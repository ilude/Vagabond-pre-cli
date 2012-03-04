require 'vagabond'

describe Vagabond::Environment, ".virtualbox_found?" do
  it "should return true when virtualbox is found" do
    Vagabond::Environment.new().virtualbox_found?.should be_true
  end
end