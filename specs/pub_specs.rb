require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub')
require_relative('../drinks')
require_relative('../customer')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassPub < MiniTest::Test

  def setup()
    @drink1 = Drink.new('Tennents', 3, 4)
    @drink2 = Drink.new('Gin and Tonic', 5, 5)
    @drink3 = Drink.new('Double Vodka and Coke', 6, 8)
    @customer1 = Customer.new('Father Jack', 20, 65, 0)
    @pub_name = Pub.new('Pirn Inn', 100, [@drink1, @drink2, @drink3])


  end

def test_does_pub_have_name()
  assert_equal('Pirn Inn', @pub_name.pub_name)
end

def test_initial_drinks_stock
  assert_equal(3, @pub_name.drinks_stock)
end

def test_till_balance
  assert_equal(100, @pub_name.till_balance)
end


def test_of_age
  actual = @pub_name.of_age(@customer1)
  assert_equal(true, actual)

end

def test_can_sell_drink
  @pub_name.sell_drink(@drink1)
  assert_equal(2, @pub_name.drinks.size)
end

def test_customer_pished
  actual = @pub_name.drunkness_level(@customer1)
  assert_equal(false, actual)
end

# def test_can_sell_multiple_drinks
#   @pub_name.sell_drink(@drink1)
#   @pub_name.sell_drink(@drink2)
#   @pub_name.sell_drink(@drink3)
#   assert_equal(3, )
# end

end
