require "sinatra/base"
require "json"

class Web < Sinatra::Base
  get "/" do
    %{
      <h1>CAP app pushed by jenkins</h1>
      <h1>Hello</h1>
      <img src="http://www.it-slav.net/~peter/backgrounds/suse_logo_1408x640_og-image.png" alt="Smiley face"> 
      <h2><a href="/env.json">Check my ENV out</a></h2>
    }
  end

  get "/env.json" do
    content_type "application/json"
    JSON.pretty_generate(ENV.to_h)
  end
end

run Web.new
