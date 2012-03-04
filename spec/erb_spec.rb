require 'vagabond'

class TestBinding
  attr_accessor :host, :value

  def initialize(host, value)
    @host = host
    @value = value
  end

  def get_binding
    binding
  end
  
end

describe Vagabond::ErbProcessor, ".process" do
  it "should process template files" do
    result = Vagabond::ErbProcessor.process('./spec/template/test.erb', TestBinding.new('local', 'menu'))
    result.should eq('Host = local Value = menu')
  end
end