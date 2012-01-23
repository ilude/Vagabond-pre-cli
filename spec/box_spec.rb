require 'vagabond'
require 'FileUtils'

describe "Vagabond::Box" do
  describe "create" do
    before { 
      box_build = File.join(Dir.pwd, 'builds', 'rspec_test')
      puts box_build
      if Dir.exists? box_build
        FileUtils.remove_dir box_build
        puts "Deleted #{box_build}"
      end
    }
    it "should have a name" do
      box = Vagabond::Box.create('rspec_test','ubuntu-11.10-server-amd64', Vagabond::Environment.new)
      box.name.should == 'rspec_test'
    end
  end
 
  
end