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



end
