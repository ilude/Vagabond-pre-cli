require "vagabond/version"

module Vagabond
  @vboxmanage = 'vboxmanage'
  def self.virtualbox_installed?
  	if(@version.nil?)
  		begin
      		IO.popen "#{@vboxmanage} -v" do |process|
      			@version = process.read
      			process.close
      		end
      		true
    	rescue
      		false
    	end
	end
  end
end
