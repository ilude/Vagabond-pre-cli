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

task :test_ssh do
	require 'net/ssh'
	Net::SSH.start(Vagabond::Environment.new.host_ip, 'vagrant', :password => 'vagrant', :port => 7222) do |session|
		file = "/var/log/messages"
		puts session.exec! "uptime"
		puts session.exec! "hostname"
	end
end

desc "Create cloud"
task :create do
  Vagabond.run
end

desc "Delete box"
task :delete do
  command = ARGV.shift
  box = Vagabond::Box.find(ARGV.shift)
  box.destroy
end
