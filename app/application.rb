require 'time'

class Application
  def call(env)
    resp = Rack::Response.new

    now = Time.now.hour 
    if now >= 12 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end 

    resp.finish
  end
end