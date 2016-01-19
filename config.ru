require 'faye'
require 'sinatra'

set :port, 9292
set :faye_client, Faye::Client.new( 'http://localhost:9292/faye' )
set :saved_data, Hash.new( [] )

get '/' do
  # This loads the saved data so if the web page is refreshed
  # or a new client connects, the data persists.
  @saved_data = settings.saved_data
  erb :index
end

post '/' do
  channel = params['channel']
  message = params['message']

  # Send data out to connected clients
  settings.faye_client.publish( channel, message )

  # Save data for future clients
  settings.saved_data[channel] += [message]

  redirect to( '/' )
end

Faye::WebSocket.load_adapter 'thin'
use Faye::RackAdapter, mount: '/faye', timeout: 45, extensions: []
run Sinatra::Application
