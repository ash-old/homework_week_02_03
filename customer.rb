class Customer

attr_accessor :customer_name, :wallet, :age, :drunkness_level

def initialize(customer_name, wallet, age, drunkness_level)
  @customer_name = customer_name
  @wallet = wallet
  @age = age
  @drunkness_level = drunkness_level
end

def wallet_value
  return @wallet
end

def customer_age
  return @age
end

def buy_a_drink(drink, pub_name)
  pub_name.sell_drink(drink)
  @wallet -= drink.price
  @drunkness_level += alcohol_level
end

def drunkness_level
  return @drunkness_level
end


end
