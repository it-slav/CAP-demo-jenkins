require "sinatra/base"
require "json"

class Web < Sinatra::Base
  get "/" do
    %{
      body {
	            background-image: url(" https://www.elsetge.cat/imagepost/b/54/544686_opensuse-wallpaper.jpg");
              background-repeat:no-repeat;
              background-size:cover;
              } 
      <h1>CAP app pushed by jenkins</h1>
      <h1>ProdReady</h1>
    }
  end

  get "/env.json" do
    content_type "application/json"
    JSON.pretty_generate(ENV.to_h)
  end
end

run Web.new
