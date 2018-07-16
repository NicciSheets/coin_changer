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

	def test_coin_change_array
		money = 67
		coins = 10, 25, 5, 1
		assert_equal([[25, 25], [10], [5], [1, 1]], coin_change(money, coins))
	end

	def test_coin_change_array
		money = 123
		coins = 10, 25, 5, 1
		assert_equal([[25, 25, 25, 25], [10, 10], [], [1, 1, 1]], coin_change(money, coins))
	end
	def test_coin_changer_returns_every_key
		money = 67
		coins = 10, 25, 5, 1
		assert_equal({quarter: 2, dime: 1, nickel: 1, penny: 2}, coin_hash(money, coins))
	end


	def test_coin_changer_returns_every_key
		money = 123
		coins = 10, 25, 5, 1
		assert_equal({quarter: 4, dime: 2, nickel: 0, penny: 3}, coin_hash(money, coins))
	end

end
