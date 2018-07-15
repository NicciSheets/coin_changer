require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_creating_array_with_coin_values
		coins = 25, 10, 5, 1
		assert_equal([25, 10, 5, 1], coin_arr(coins))
		assert_equal(Array, coin_arr(coins).class)
		assert_equal(4, coin_arr(coins).size)
	end

	def test_coin_arr_is_sorted
		coins = 25, 10, 5, 1
		assert_equal(25, coins[0])
		assert_equal(10, coins[1])
		assert_equal(5, coins[2])
		assert_equal(1, coins[3])
	end
end