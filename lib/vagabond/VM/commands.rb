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

      def self.create(boxname, ostype, memory=384, cpus=1)
        execute "createvm --name '#{boxname}' --ostype #{ostype} --register"
        execute "modifyvm '#{boxname}' --cpus #{cpus} --memory #{memory}"
      end

      def self.create_sata_controller(boxname, hostiocache="off")
        execute "storagectl '#{boxname}' --name \"SATA Controller\" --add sata --sataportcount 4 --hostiocache #{hostiocache} --bootable on"
      end

      def self.create_disk(boxname, location, size) 
        execute "createhd --filename \"builds/#{boxname}/#{location}\" --size #{size}"
      end

      def self.attach_disk(boxname, location)
        execute "storageattach '#{boxname}' --storagectl \"SATA Controller\" --port 0 --device 0 --type hdd --medium \"builds/#{boxname}/#{location}\""
      end

      def self.attach_iso(boxname, location)
        execute "storageattach '#{boxname}' --storagectl \"SATA Controller\" --port 1 --device 0 --type dvddrive --medium '#{location}'"
      end

      def self.execute(args)
        output = ''

        puts "#{@virtualbox_command} #{args}"

        IO.popen "#{@virtualbox_command} #{args}" do |process|
          output = process.read
          process.close
        end
        
        output
      end
    end
  end
end