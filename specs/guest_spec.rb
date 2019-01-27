require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Emil", "Thriller", 5.00)
    @guest_2 = Guest.new("John", "November rain", 4.00)
    @guest_3 = Guest.new("Peter", "Like a pryer", 7.00)
    @room_abba = Room.new("Abba")
  end


  def test_guest_name
    assert_equal("Emil", @guest_1.name)
  end

  def test_guest_favourite_song
    assert_equal("Thriller", @guest_1.favourite_song)
  end

  def test_customer_wallet
    assert_equal(5.00, @guest_1.wallet)
    assert_equal(7.00, @guest_3.wallet)
  end

  def test_guest_can_afford_fee
    assert_equal(0, @guest_1.guest_can_afford_fee(@room_abba))
    assert_equal(2, @guest_3.guest_can_afford_fee(@room_abba))
  end

  # def test_customer_cannot_afford_fee
  #   assert_equal("Sorry pal, too expensive", @guest_2.guest_can_afford_fee(@room_abba))
  # end
end
