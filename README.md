# Sinatra Faye Example

Where Ruby Sinatra API meets Javascript Faye WebSockets

This is an example of using Sinatra and Faye together. Sinatra accepts a POST request and then publishes that message out to all connected clients (who have subscribed to certain channels). It also saves the data for future clients that connect.

Note that although you can use Faye on the client to publish a message rather than send a POST request, this example was specifically designed to show how an API call to a Sinatra app can update all frontend Javascript clients.

Try sending a message to a channel to see it update without any reloading of the browser. Open this web page in multiple tabs in your browser to see all clients update simultaneously.
