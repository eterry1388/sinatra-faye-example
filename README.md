# Sinatra Faye Example

Where Ruby Sinatra API meets Javascript Faye WebSockets

This is an example of using [Sinatra](http://www.sinatrarb.com) and [Faye](http://faye.jcoglan.com) together. Sinatra accepts a POST request and then publishes that message out to all connected clients (who have subscribed to certain channels). It also saves the data for future clients that connect.

Note that although you can use Faye on the client to publish a message rather than send a POST request, this example was specifically designed to show how an API call to a Sinatra app can update all frontend Javascript clients.

Try sending a message to a channel to see it update without any reloading of the browser. Open this web page in multiple tabs in your browser to see all clients update simultaneously.

## Installation

```
git clone git@github.com:eterry1388/sinatra-faye-example.git
cd sinatra-faye-example
bundle install
```

## Usage

```
bundle exec rackup -s thin -E production
```

Then visit [http://localhost:9292](http://localhost:9292) in your browser.

![Screenshot](sinatra-faye-example.png?raw=true)

## License

This repository is available as open source under the terms of the MIT License.
