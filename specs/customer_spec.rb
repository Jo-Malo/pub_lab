require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Rory", 50.00, 30)
    @drink = Drink.new("Lager", 2.00, 1.5)
  end

  def test_customer_name
    assert_equal("Rory", @customer.name)
  end

  def test_wallet_amount
    assert_equal(50.00, @customer.wallet)
  end

  def test_take_money_from_wallet
    @customer.take_money_from_wallet(@drink.price)
    assert_equal(48.00, @customer.wallet)
  end

  def test_check_age
    assert_equal(30, @customer.age)
  end

  def test_drunkenness_level
    result = @customer.drunkenness_level(@drink.alcohol_level)
    assert_equal(1.5, result)
  end

end
