require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @user_text = PigLatinizer.new(params[:user_text])

    erb :user_input
  end
end
