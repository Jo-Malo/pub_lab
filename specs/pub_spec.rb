require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("Beer Garden")

  end

end
