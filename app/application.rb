class Application

    def call(env)
      resp = Rack::Response.new

      if Time.now.hour < 12 
        resp.write "Good Morning\n" #same as puts
      else 
      resp.write "Good Afternoon\n"
      end 
      resp.finish #to finish resp 
    end 
    
  
end
  