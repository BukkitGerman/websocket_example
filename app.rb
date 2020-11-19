require 'eventmachine'
require 'sinatra/base'
require 'thin'

class ServerClass < EventMachine::Connection
  def initialize(*args)
    # ruby singleton - store channel data in global hash
    ($channels ||= [])
  end

  def post_init
    puts "initialized"
    $cb.call("initialized");
  end

  def receive_data(data)
    puts data
    channels_send("Receive: " + data)
  end

  def channel_send(msg,channel)
    $channels[channel].send_data(msg)
  end

  def channels_send(msg)
    $channels.each{|channel| channel.send_data(msg)}
  end

  def unbind
    # puts user left
  end

end

EventMachine.run do
  $ems = EventMachine::start_server('127.0.0.1', 3001, ServerClass)

  class App < Sinatra::Base
    set :public, File.dirname(__FILE__) + '/public'

    get '/' do
      erb :index          
    end

  end

  App.run!({:port => 3000})

end
