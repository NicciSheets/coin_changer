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

	def test_creating_array_with_coin_names
		coin_names = "quarter", "dime", "nickel", "penny"
		assert_equal(coin_names, coin_name_arr(coin_names))
		assert_equal(Array, coin_name_arr(coin_names).class)
		assert_equal(4, coin_name_arr(coin_names).size)
		assert_equal(["quarter", "dime", "nickel", "penny"], coin_name_arr(coin_names))
	end

	def test_assert_building_hash_with_coin_values_and_names
		assert_equal({"quarter"=>25, "dime"=>10, "nickel"=>5, "penny"=>1}, coin_hash())
		assert_equal(Hash, coin_hash().class)
		assert_equal(25, coin_hash()["quarter"])
		assert_equal(10, coin_hash()["dime"])
		assert_equal(5, coin_hash()["nickel"])
		assert_equal(1, coin_hash()["penny"])
	end
	
end
