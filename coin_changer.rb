

def coin_arr(coin_val)
	coin_val.sort! { |x, y| y <=> x }
end


def multidimen_arr(coin_val) #creates one array with subarrays that follow pattern ("", coin_val), which allows us to plsg in the coin_name associated with each value in next function.  Doing this separately, in case there's ever a change in the currentcy used for this - kinda thinking head, or trying to.
	coin_array = coin_arr(coin_val)
	coin_multidimen_arr= coin_array.collect { |value| ["", value] }
	coin_multidimen_arr
end


def coin_name_arr(coin_val)
end

#coin_val = 25, 10, 5, 1
#p multidimen_arr(coin_val)