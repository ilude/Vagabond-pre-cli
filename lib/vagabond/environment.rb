module Vagabond
  class Environment
    require 'socket'

    def initialize(options = {})
      defaults = {
        :template_path => File.join(Dir.pwd, "templates"),
        :builds_path => File.join(Dir.pwd, "builds"),
        :host_ip => UDPSocket.open {|socket| socket.connect("64.233.187.99", 1); socket.addr.last}
      }

      @env = defaults.merge(options)
    end
    
    def method_missing(m, *args, &block)
      property = m.to_sym
      return @env[property] if(@env.has_key? property)
    end
    
  end
  
end