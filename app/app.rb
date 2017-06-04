ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'
require_relative './models/peep'



class Chitter < Sinatra::Base
  enable :sessions

  get '/' do
    @peeps = Peep.all 
    erb :feed
  end

  get '/peep' do
    erb :peeps
  end

  post '/peeps' do
    peep = Peep.new(message: params[:message])
    peep.save
    redirect '/'
  end

end
