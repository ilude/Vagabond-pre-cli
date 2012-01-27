require "vagabond/version"
require "vagabond/VM/commands"
require "vagabond/web"
require "vagabond/box"
require "vagabond/template"
require "vagabond/environment"


module Vagabond
  def self.virtualbox_found?
  	if(@version.nil?)
		  begin
      	!Vagabond::VM::Commands.version.empty?
    	rescue
      	false
    	end
    end
  end
end
