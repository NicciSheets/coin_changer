

def coin_arr(coins)
	coins.sort! { |x, y| y <=> x }
end

def coin_name_arr(coin_name)
	coin_name
end

# def coin_hash(coin_with_amount)
# 	coin_with_amount
# end

###  don't need previous 3 definitions for the actual function for the coin)_changer.  Only included them to swork on tdd.
	
# def coin_changer(money) 
# 	change = {}
# 	while money > 0 do
# 		if money >= 25
# 			money -= 25
# 			if change.key?(:quarter) then change[:quarter] += 1
# 			else
# 				change[:quarter] = 1
# 			end
# 		elsif money >= 10
# 			money -= 10
# 			if change.key?(:dime) then change[:dime] += 1
# 			else
# 				change[:dime] = 1
# 			end
# 		elsif money >= 5
# 		   money -= 5		
# 		   if change.key?(:nickel) then change[:nickel] += 1
# 			else
# 				change[:nickel] = 1
# 			end
# 		elsif money >= 1
# 			money -= 1
# 			if change.key?(:penny) then change[:penny] += 1
# 			else
# 				change[:penny] = 1
# 			end
# 		end
# 	end
# 	change
# end














def coin_change(money, coins)
	change = {}
	coin_arr(coins).map { |coin| f = money/coin; money%=coin; Array.new(f){coin} }
end

def coin_hash(money, coins)
	coin_change_flat = coin_change(money, coins).flatten
	coin_hash = { quarter: coin_change_flat.count(25), dime: coin_change_flat.count(10), nickel: coin_change_flat.count(5), penny: coin_change_flat.count(1) }
end

# money = 67
# coin_name = ["quarter", "dime", "nickel", "penny"]
# coins = [25, 10, 5, 1]
# #coin_change(money, coins)
# p coin_hash(money, coins)

