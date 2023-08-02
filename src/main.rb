require 'sinatra/base'

class Main < Sinatra::Base
  set :server, 'falcon'
  set :port, 8090
  get '/' do
    content_type :json
    { status: 'success', message: "test" }.to_json
  end
end