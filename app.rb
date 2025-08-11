# load the Sinatra library (small Ruby web framework)
require 'sinatra'
# load the JSON library so we can convert Ruby hashes to JSON strings
require 'json'
# GET request to the root path "/"
# When the user visits http://localhost:4567/ this block runs
get '/' do
  # returning a plain text response to the browser
  "Hello we are learning  Ruby & Sinatra!"
end
# GET request to /json — demonstrates returning JSON
get '/json' do
  # tell the browser/client that the response is JSON
  content_type :json
  # build a Ruby hash and convert it to JSON
  {
    message: "Hello from Ruby & Sinatra!",
    time: Time.now # current server time
  }.to_json
end
# GET request with a path parameter: /hello/:name
# Example: /hello/Fidelis
get '/hello/:name' do
  # params is a Sinatra-provided hash with route/query parameters
  name = params['name']

  # interpolate the name into a friendly message
  # Rack::Utils.escape_html prevents HTML injection if user supplies tags
  "Hello, #{Rack::Utils.escape_html(name)}! Welcome to Sinatra."
end
# Notes:
# - Run the server with: ruby app.rb  (or `bundle exec ruby app.rb`)
# - Default port is 4567. To change port: ruby app.rb -p 3000
# - To bind to all interfaces (for testing on other devices): ruby app.rb -o 0.0.0.0
