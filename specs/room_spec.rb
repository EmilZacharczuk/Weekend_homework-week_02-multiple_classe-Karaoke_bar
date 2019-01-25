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
  end

  def test_room_theme
    assert_equal("Abba", @room_abba.theme)
  end

  def test_customers_in_the_room_empty
    assert_equal(0, @room_abba.customers.length)
  end

  def test_custmers_in_the_room_with_guest
    @room_abba.checking_in_guest(@guest_1)
    assert_equal(1, @room_abba.customers.length)
  end
  # def test_cutomers_in_the_room_with_quest
  #   asset_equal (1, @room_abba.customers.length)
  # end
  # def test_checking_in_guest
  #   checking_in_guest(@room_abba)
  #   assert_equal(1, @room_abba.customers_in_the_room)
  # end
end
