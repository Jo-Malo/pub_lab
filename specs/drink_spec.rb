require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("Lager", 2.00)
  end

  def test_name
    assert_equal("Lager", @drink.name)
  end

  def test_price
    assert_equal(2.00, @drink.price)
  end

end
