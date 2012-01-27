require "bundler/gem_tasks"
require 'vagabond'

task :bb do
	
	box = Vagabond::Box.create('test','ubuntu-11.10-server-amd64', Vagabond::Environment.new)
	box.build
end

task :db do
	box = Vagabond::Box.find("test")
	box.destroy
end
