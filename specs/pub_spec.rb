require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("Beer Garden")
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

end
