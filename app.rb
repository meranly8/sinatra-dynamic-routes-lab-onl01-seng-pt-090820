require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    params[:number].to_i * params[:number].to_i
  end

  get '/say/:number/:phrase' do
    @phrase_string = params[:number].to_i.times {"#{params[:phrase]}"}
    "#{@phrase_string}"
  end
end
