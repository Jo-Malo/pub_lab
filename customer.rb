class Customer

  attr_reader :name, :wallet

  def initialize(name, amount)
    @name = name
    @wallet = amount
  end

  def take_money_from_wallet(price)
    @wallet -= price
  end



end
