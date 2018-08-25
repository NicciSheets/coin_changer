require "sinatra"
require_relative "coin_changer.rb"

get '/' do
	result = result || {}
	input2 = input2 || ""
erb :input, locals: {result: result, input2: input2}
end


post '/get_change' do
	puts params
  input = params[:coin_input].to_i
  input2 = "#{input}¢ = "
  coins = 10, 25, 5, 1
  result = coin_hash(input, coins)
  p result.class
  p result
erb :input, locals: {result: result, input2: input2}
end
