class Application

  def call(env)
    resp = Rack::Response.new

    time =Time.new
    value=time.hour
    

    if value.to_s < "%I"  #%I is Hour of the day, 12-hour clock (01 to 12).
      resp.write "Good Morning!"
    else value.to_s > "%H" 
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end 
