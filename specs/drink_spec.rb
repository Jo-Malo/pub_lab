require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("Lager", 2.00, 1.5)
  end

  def test_name
    assert_equal("Lager", @drink.name)
  end

  def test_price
    assert_equal(2.00, @drink.price)
  end

  def test_alcohol_level
    assert_equal(1.5, @drink.alcohol_level)
  end

end
