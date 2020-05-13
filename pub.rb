class Pub

  attr_accessor :pub_name, :till, :drinks

  def initialize(pub_name, till, drinks)
    @pub_name = pub_name
    @till = 100
    @drinks = drinks
  end

  def drinks_stock
    return @drinks.size
  end

  def till_balance
    return @till
  end


  def of_age(customer)
      if customer.age >= 18
        return true
      end
      return false

  end

  def sell_drink(drink)
    @till += drink.price
    sold_drink = @drinks.delete(drink)
    return sold_drink
  end

  def drunkness_level(customer)
    result = false
    if customer.drunkness_level >= 16
      return true
    end
    return result
  end




end
