class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)
    resp.write "#{num_1}, #{num_2}, #{num_3}\n"

    if num_1 == num_2 && num_1 == num_3
      resp.write "You won!"
    else
      resp.write "You lose!"
    end

    resp.finish
  end

end
