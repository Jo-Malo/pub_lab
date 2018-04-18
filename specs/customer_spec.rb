require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new("Rory", 50.00)
    @drink = Drink.new("Lager", 2.00)
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

end
