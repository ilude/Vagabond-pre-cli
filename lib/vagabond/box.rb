module Vagabond
  class Box
    attr_reader :name
    def initialize(name, env)
      @name = name
      @env = env

      
    end
    
    def self.create(name, template, env)
      box = Box.new(name, env)

      raise Exception.new("Box #{name} already exist!") if(box.created?)

      template = Template.new(template, env);

      raise Exception.new("Template #{template} does not exist at #{template.path}!") unless(template.exists?)

      template.create(box)
      
      box
    end

    def created?
      return Dir.exists?(File.join(@env.builds_path, @name))
    end
    
  end
end