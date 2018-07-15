# change_amount = { "half-dollar" => 50, "quarter" => 25, "dime" => 10, "nickel" => 5, "pennies" => 1 }
# money = 127
# p coin_value = coin_amount.values #returns value, how much each coin is valued at
# p coins = coin_amount.keys # returns keys, what each coin amount is called
coins = [50, 1, 10, 5, 25]
coins.sort! { |x, y| y <=> x }
p coins

