class Pub

  attr_reader :name

  def initialize(name)
    @name = name
    @till = 0.00
    @drinks = []
  end

  def till_amount
    return @till
  end

  def drinks_stock
    return @drinks.count
  end

  def money_to_till(price)
    @till += price
  end

  def check_customer_age(age)
    if age >= 18
      return true
    else
      return false
    end
  end

  def level_of_drunkenness(alcohol_level)
    if alcohol_level <= 10
      return true
    else
      return false
    end
  end
end
