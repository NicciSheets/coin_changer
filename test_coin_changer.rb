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

	def test_creating_array_with_coin_names
		coin_names = "quarter", "dime", "nickel", "penny"
		assert_equal(coin_names, coin_name_arr(coin_names))
		assert_equal(Array, coin_name_arr(coin_names).class)
		assert_equal(4, coin_name_arr(coin_names).size)
		assert_equal(["quarter", "dime", "nickel", "penny"], coin_name_arr(coin_names))
	end

	# def test_assert_building_hash_with_coin_values_and_names
	# 	coin_with_amount = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	# 	assert_equal(coin_with_amount, coin_hash(coin_with_amount))
	# 	assert_equal(Hash, coin_hash(coin_with_amount).class)
	# 	assert_equal(25, coin_hash(coin_with_amount)[:quarter])
	# 	assert_equal(10, coin_hash(coin_with_amount)[:dime])
	# 	assert_equal(5, coin_hash(coin_with_amount)[:nickel])
	# 	assert_equal(1, coin_hash(coin_with_amount)[:penny])
	# end
	
	### previous 3 tests are not used in the final coin_changer app, but were merely dont for tdd learning purposes

	def test_coin_changer_returns_every_key
		money = 67
		coins = 10, 25, 5, 1
		assert_equal({quarter: 2, dime: 1, nickel: 1, penny: 2}, coin_hash(money, coins))
	end




end
