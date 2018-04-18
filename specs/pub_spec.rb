require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("Beer Garden")
    @drink = Drink.new("Lager", 2.00, 1.5)
    @customer = Customer.new("Rory", 50.00, 30)
  end

  def test_name
    assert_equal("Beer Garden", @pub.name)
  end

  def test_till_amount
    assert_equal(0.00, @pub.till_amount)
  end

  def test_drinks_stock
    assert_equal(0, @pub.drinks_stock)
  end

  def test_add_money_to_till
    @pub.money_to_till(@drink.price)
    assert_equal(2.00, @pub.till_amount)
  end

  def test_check_customer_age
    result = @pub.check_customer_age(@customer.age)
    assert_equal(true, result)
  end

  def test_level_of_drunkenness
    result = @pub.level_of_drunkenness(@drink.alcohol_level)
    assert_equal(true, result)
  end

end
