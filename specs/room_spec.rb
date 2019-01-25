require('minitest/autorun')
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

  def setup
    @room_abba = Room.new("Abba")
    @room_rock = Room.new("Rock")
    @room_oldschool = Room.new('Oldschool')
    @guest_1 = Guest.new("Emil")
    @guest_2 = Guest.new("John")
  end

  def test_room_theme
    assert_equal("Abba", @room_abba.theme)
  end

  def test_customers_in_the_room_empty
    assert_equal(0, @room_abba.guests.length)
  end

  def test_customers_in_the_room_with_a_guest
    @room_abba.checking_in_guest(@guest_1)
    assert_equal(1, @room_abba.guests.length)
  end
  def test_customers_in_the_room_with_2_guests
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    assert_equal(2, @room_abba.guests.length)
  end
  def test_cutomers_checking_out
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    @room_abba.checking_out_guest(@guest_2)
    @room_abba.checking_out_guest(@guest_1)
    assert_equal(0, @room_abba.guests.length)
  end
end
