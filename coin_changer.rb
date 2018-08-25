

def coin_arr(coins)
	coins.sort! { |x, y| y <=> x }
end

def coin_change(money, coins)
	f_arr = []
	coin_arr(coins).each do |coins| 
		f = money/coins
		money%=coins
		f_arr << f
	end
	f_arr
	p f_arr
end
	

def coin_hash(money, coins)
	coin_change2 = coin_change(money, coins)
	coin_hash = { Quarter: coin_change2[0], Dime: coin_change2[1], Nickel: coin_change2[2], Penny: coin_change2[3] }
end


#money = 123
#coins = [25, 10, 5, 1]
##p coin_change(money, coins)
#p coin_hash(money, coins)

#p coin_hash(9999999999999999999999999999, [10, 25, 5, 1])