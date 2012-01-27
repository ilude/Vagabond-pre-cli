module Vagabond
	class Web

    require 'webrick'
    include WEBrick

    class FileServlet < WEBrick::HTTPServlet::AbstractServlet       
      def initialize(server,localfile)
        super(server)
        @server=server
        @localfile=localfile
      end

			def do_GET(request,response)
				response['Content-Type']='text/plain'
				response.status = 200
				puts "Serving file #{@localfile}"                     
				displayfile=File.open(@localfile,'r')
				content=displayfile.read()
				response.body=content
				#If we shut too fast it might not get the complete file
				sleep 2
				@server.shutdown
			end
		end 

    def self.wait_for_request(options={:filename => "preseed.cfg", :web_dir => "", :port => 7070})  
      s= HTTPServer.new(
        :Port => options[:port]
      )
      s.mount("/#{options[:filename]}", FileServlet,File.join(options[:web_dir],options[:filename]))
      trap("INT"){
				s.shutdown
				puts "Stopping webserver"
				exit
      }
      s.start
    end
  end
end