
def coin_arr(coins)
	puts "in coin_arr, coins is #{coins}"
	coins.sort! { |x, y| y <=> x }
end

def coin_change(money, coins)
	puts "in coin_change, money is #{money}"
	puts "in coin_change, coins is #{coins}"
	coin_arr(coins).map { |coin| f = money/coin; money%=coin; Array.new(f){coin} }
end

def coin_hash(money, coins)
	puts "in coin_hash money is #{money}"
	puts "in coin_hash, coins is #{coins}"
	coin_change_flat = coin_change(money, coins).flatten
	coin_hash = { quarter: coin_change_flat.count(25), dime: coin_change_flat.count(10), nickel: coin_change_flat.count(5), penny: coin_change_flat.count(1) }
end


#money = 123
#coins = [25, 10, 5, 1]
##p coin_change(money, coins)
#p coin_hash(money, coins)

#p coin_hash(7657856785758, [10, 25, 5, 1])