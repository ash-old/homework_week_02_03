require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassDrink < MiniTest::Test


  def setup()
    @drink1 = Drink.new('Tennents', 3, 4)
    @drink2 = Drink.new('Gin and Tonic', 5, 5)
    @drink3 = Drink.new('Double Vodka and Coke', 6, 8)
  end

def test_drink_name()
  assert_equal('Tennents', @drink1.drink_name)
end

def test_drink_price
  assert_equal(5, @drink2.price)
end

def test_alcohol_level
  assert_equal(8, @drink3.alcohol_level)
end





end
