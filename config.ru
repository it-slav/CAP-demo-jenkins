require "sinatra/base"
require "json"

class Web < Sinatra::Base
  get "/" do
    %{
      <h1>CAP app pushed by jenkins</h1>
      <h1>Test5</h1>
    }
  end

  get "/env.json" do
    content_type "application/json"
    JSON.pretty_generate(ENV.to_h)
  end
end

run Web.new
