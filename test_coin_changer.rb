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

	def test_coin_change_array_returns_each_money_value
		money = 67
		coins = 10, 25, 5, 1
		assert_equal([[25, 25], [10], [5], [1, 1]], coin_change(money, coins))
		assert_equal(Array, coin_change(money, coins).class)
		assert_equal(4, coin_change(money, coins).size)
	end

	def test_coin_change_array_with_empty_money_value
		money = 123
		coins = 10, 25, 5, 1
		assert_equal([[25, 25, 25, 25], [10, 10], [], [1, 1, 1]], coin_change(money, coins))
		assert_equal(Array, coin_change(money, coins).class)
		assert_equal(4, coin_change(money, coins).size)
	end
	
	def test_coin_change_array_with_multiple_empty_money_values
		money = 3
		coins = 10, 25, 5, 1
		assert_equal([[], [], [], [1, 1, 1]], coin_change(money, coins))
		assert_equal(Array, coin_change(money, coins).class)
		assert_equal(4, coin_change(money, coins).size)
	end

	def test_coin_changer_returns_every_key_for_each_key_and_index
		money = 67
		coins = 10, 25, 5, 1
		assert_equal({quarter: 2, dime: 1, nickel: 1, penny: 2}, coin_hash(money, coins))
		assert_equal(Hash, coin_hash(money, coins).class)
		assert_equal([:quarter, :dime, :nickel, :penny], coin_hash(money, coins).keys)
	end

	def test_coin_changer_returns_every_key_with_empty_money_value
		money = 123
		coins = 10, 25, 5, 1
		assert_equal({quarter: 4, dime: 2, nickel: 0, penny: 3}, coin_hash(money, coins))
		assert_equal(Hash, coin_hash(money, coins).class)
		assert_equal([:quarter, :dime, :nickel, :penny], coin_hash(money, coins).keys)
	end

	def test_coin_changer_returns_every_key_with_multiple_empty_money_values
		money = 3
		coins = 10, 25, 5, 1
		assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 3}, coin_hash(money, coins))
		assert_equal(Hash, coin_hash(money, coins).class)
		assert_equal([:quarter, :dime, :nickel, :penny], coin_hash(money, coins).keys)
	end

end
