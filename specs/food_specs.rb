require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer')
require_relative('../pub')
require_relative('../drinks')
require_relative('../food')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassFood < MiniTest::Test


  def setup()
    @food1 = Food.new('Pizza', 10, 3)
    # @customer1 = Customer.new('Father Jack', 20, 65, 0)
    # @drink1 = Drink.new('Tennents', 3, 4)
    # @drink2 = Drink.new('Gin and Tonic', 5, 5)
    # @drink3 = Drink.new('Double Vodka and Coke', 6, 8)
  end

  def test_food_name
    assert_equal('Pizza', @food1.food_name)
  end

  def test_food_price
    assert_equal(10, @food1.food_price)
  end

  def test_rejuvenation_level
    assert_equal(3, @food1.rejuvenation_level)
  end








end
