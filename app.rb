require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/" do
    @user_phrase = PigLatinizer.new(params[:text])
    erb :results
  end

end
