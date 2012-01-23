module Vagabond
  class Environment
    def initialize(options = {})
      defaults = {
        :template_path => File.join(Dir.pwd, "templates"),
        :builds_path => File.join(Dir.pwd, "builds")
      }

      @env = defaults.merge(options)
    end
    
    def method_missing(m, *args, &block)
      property = m.to_sym
      return @env[property] if(@env.has_key? property)
    end
    
  end
  
end