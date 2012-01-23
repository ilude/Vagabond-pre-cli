require "vagabond/version"
require "vagabond/command"
require "vagabond/box"

module Vagabond
  def self.virtualbox_found?
  	if(@version.nil?)
  		begin
      	!Vagabond::Command.version.empty?
    	rescue
      	false
    	end
    end
  end
end
