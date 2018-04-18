class Customer

  attr_reader :name, :wallet, :age

  def initialize(name, amount, age)
    @name = name
    @wallet = amount
    @age = age
    @drunk_level = 0
  end

  def take_money_from_wallet(price)
    @wallet -= price
  end

  def drunkenness_level(alcohol_level)
    @drunk_level += alcohol_level
  end


end
