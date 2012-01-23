module Vagabond
  class Template
    attr_reader :name
    attr_reader :path
    def initialize(name, env)
      @name = name
      @env = env
      @path = env.template_path
    end
    
    def exists?
      Dir.exist?(@path)
    end
    
  end
end