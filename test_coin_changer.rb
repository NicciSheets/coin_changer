require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_creating_array_with_coin_values
		coin_val = 10, 25, 5, 1
		assert_equal(coin_val, coin_arr(coin_val))
		assert_equal(Array, coin_arr(coin_val).class)
		assert_equal(4, coin_arr(coin_val).size)
		assert_equal([25, 10, 5, 1], coin_arr(coin_val))
	end

	def test_coin_arr_is_sorted_high_to_low
		coin_val = 10, 25, 5, 1
		assert_equal(25, coin_arr(coin_val)[0])
		assert_equal(10, coin_arr(coin_val)[1])
		assert_equal(5, coin_arr(coin_val)[2])
		assert_equal(1, coin_arr(coin_val)[3])
	end

	def test_creating_multidimensional_array_leading_into_hashes
		coin_val = 10, 25, 5, 1
		assert_equal(Array, multidimen_arr(coin_val).class)
		assert_equal(4, multidimen_arr(coin_val).size)
		assert_equal([["", 25], ["", 10], ["", 5], ["", 1]], multidimen_arr(coin_val))
	end

	def test_plugging_in_coin_names_for_each_value
		coin_val = 5, 10, 25, 1
		assert_equal([["quarter", 25], ["dime", 10], ["nickel", 5], ["penny", 1]], coin_name_arr(coin_val))
	end

end