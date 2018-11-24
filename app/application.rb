class Application
#  @@items = Item.all

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      resp.write "Trying the other thing first."
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end
