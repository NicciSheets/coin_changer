

def coin_arr(coin_val)
	coin_val.sort! { |x, y| y <=> x }
end

def coin_name_arr(coin_name)
end


############ these tests were simply in case we ever use another currency with different nomianal values, it's just proving there's the 2 arrays, one with the values sorted high to low, the other with the coin names, and we're using the information to make a hash in the next usable code











# def multidimen_arr(coin_val) #creates one array with subarrays that follow pattern ("", coin_val), which allows us to plsg in the coin_name associated with each value in next function.  Doing this separately, in case there's ever a change in the currentcy used for this - kinda thinking head, or trying to.
# 	coin_array = coin_arr(coin_val)
# 	coin_multidimen_arr= coin_array.collect { |value| ["", value] }
# end


# def coin_names(coin_val)
# 	subarray = multidimen_arr(coin_val)
# 	subarray(25) = ["quarter", 25]
# 	subarray(10) = ["dime", 10]
# 	subarray(5) = ["nickel", 5]
# 	subarray(1) = ["penny", 1]
# end
	#def assign_coin_names(coin_val)

#end
#
#oin_name = "quarter", "dime", "nickel", "penny"
#coin_val = 25, 10, 5, 1
#puts multidimen_arr(coin_val)