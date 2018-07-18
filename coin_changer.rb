
def coin_arr(coins)
	coins.gsub(/[^0-9]/i, '')
	coins.sort! { |x, y| y <=> x }
end

def coin_change(money, coins)
	coin_arr(coins).map  |coin| 
	f = money/coin; 
	money%=coin 
	Array.new(f){coin} 
end

def coin_hash(money, coins)
	coin_change_flat = coin_change(money, coins).flatten
	coin_hash = { quarter: coin_change_flat.count(25), dime: coin_change_flat.count(10), nickel: coin_change_flat.count(5), penny: coin_change_flat.count(1) }
end


#money = 123
#coins = [25, 10, 5, 1]
#p coin_change(money, coins)
#p coin_hash(money, coins)

#p coin_hash(7657856785758, [10, 25, 5, 1])