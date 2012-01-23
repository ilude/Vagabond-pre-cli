module Vagabond
  module VM
    class Commands
      @virtualbox_command = 'vboxmanage'
      
      def self.virtualbox_command
        @virtualbox_command
      end

      def self.virtualbox_command=(value)
        @virtualbox_command = value
      end

      def self.version
        if(@version.nil?)
          @version = execute "-v"
        end

       @version
      end

      def self.execute(args)
        output = ''

        IO.popen "#{@virtualbox_command} #{args}" do |process|
          output = process.read
          process.close
        end
        
        output
      end
    end
  end
end