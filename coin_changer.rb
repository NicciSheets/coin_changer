

def coin_arr(coin_val)
	coin_val.sort! { |x, y| y <=> x }
end

def coin_name_arr(coin_name)
	coin_name
end
###  don't really need these for the end function used for coin changer, did these just to show testing for the elements within the hash

def coin_hash()
	coin_hash = Hash.new
	coin_hash["quarter"] = 25
	coin_hash["dime"] = 10
	coin_hash["nickel"] = 5
	coin_hash["penny"] = 1
	coin_hash
end
	
