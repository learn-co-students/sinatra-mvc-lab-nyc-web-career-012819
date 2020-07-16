require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @input = PigLatinizer.new.piglatinize(params[:user_phrase])
    # @result = PigLatinizer.piglatinize(@input)
    erb :piglatinize
  end
end
