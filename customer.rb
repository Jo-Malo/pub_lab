class Customer

  attr_reader :name, :wallet, :age

  def initialize(name, amount, age)
    @name = name
    @wallet = amount
    @age = age
  end

  def take_money_from_wallet(price)
    @wallet -= price
  end



end
