require "minitest/autorun"
require_relative "coinchanger.rb"
class TestCoinChanger < Minitest::Test

    def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_0_returns_an_empty_hash
		change = 0
		assert_equal({}, change_maker_3000(change))
	end

	def test_assert_that_1_returns_a_penny
		change = 1
		assert_equal({:penny =>1}, change_maker_3000(change))
	end

	def test_assert_that_5_returns_a_nickel
		change = 5
		assert_equal({:nickel => 1},change_maker_3000(change))
	end

	def test_assert_that_9_returns_a_nickel_and_4_pennies
		change = 9
		assert_equal({:nickel => 1, :penny => 4},change_maker_3000(change))
		end

	def test_assert_that_10_returns_a_dime
		change = 10
		assert_equal({:dime => 1}, change_maker_3000(change))
	end

	def test_assert_that_25_returns_a_quarter
		change = 25
		assert_equal({:quarter => 1}, change_maker_3000(change))
	end


end