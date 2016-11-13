require "sinatra"

get "/" do
    # puts "Hello World"
    # "Hello World"
    "<h1>Welcome to the <em>home page</em></h1>"
    # send_file 'root.html'
end

get "/about" do
    "about"
end

get "/roll-die" do
    "#{rand(1..9)}"
end

# params hash
get "/greet/:name" do
    name = params[:name].capitalize
    "Hello there #{name}!"
end

get "/greet/:first/:last" do
    "Hello there #{params[:first]} #{params[:last]}!"
end

get "/square/:num" do
  num = params[:num].to_i
  "#{num * num}"
end

get "/cat0" do
    "<!DOCTYPE html><html><head><title>My Cat</title><style type=\"text/css\" media=\"screen\">img {width: 400px;}</style></head><body><h1>My Cat Page</h1><p>It's not actually my cat :(</p><img src=\"https://static.pexels.com/photos/127028/pexels-photo-127028.jpeg\"></body></html>"
end

get "/cat" do
   send_file "cat.html"
end

get "/home" do
    erb :home
end