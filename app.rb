require "sinatra"
require_relative "coin_changer.rb"
get '/' do
	result = result || ""
erb :input, locals: {result: result}
end
post '/get_change' do
  input = params[:input_number].to_i
  coins = 10, 25, 5, 1
  result = coin_hash(input, coins)
  p result.class
  p result
erb :input, locals: {result: result}
end
