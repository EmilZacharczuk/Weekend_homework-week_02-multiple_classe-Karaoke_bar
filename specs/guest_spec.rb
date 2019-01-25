require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Emil")
    @guest_2 = Guest.new("John")
    @guest_3 = Guest.new("Peter")
  end


  def test_customer_name
    assert_equal("Emil", @guest_1.name)  
  end
end
