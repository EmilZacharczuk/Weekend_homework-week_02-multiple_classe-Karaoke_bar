require('minitest/autorun')
require("minitest/rg")
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup
    @room_abba = Room.new("Abba")
    @room_rock = Room.new("Rock")
    @room_oldschool = Room.new('Oldschool')
  end

  def test_room_theme
    assert_equal("Abba", @room_abba.theme)
  end
end
