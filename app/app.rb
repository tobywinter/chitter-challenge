ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'
require_relative './models/peep'



class Chitter < Sinatra::Base

  get '/' do
    erb :peeps
  end

  post '/peeps' do
    redirect '/'
  end

end
