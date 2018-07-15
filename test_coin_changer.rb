require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_creating_array_with_coin_values
		coins = 10, 25, 5, 1
		assert_equal(coins, coin_arr(coins))
		assert_equal(Array, coin_arr(coins).class)
		assert_equal(4, coin_arr(coins).size)
		assert_equal([25, 10, 5, 1], coin_arr(coins))
	end

	def test_coin_arr_is_sorted
		coins = 10, 25, 5, 1
		assert_equal(25, coin_arr(coins)[0])
		assert_equal(10, coin_arr(coins)[1])
		assert_equal(5, coin_arr(coins)[2])
		assert_equal(1, coin_arr(coins)[3])
	end

	# # def test_	
		
end