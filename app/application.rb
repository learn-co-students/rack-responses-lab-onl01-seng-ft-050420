class Application


    def call(env)
        response = Rack::Response.new
        Time.now.hour < 12 ? (response.write "Good Morning!") : (response.write "Good Afternoon!")
        response.finish
    end



end

