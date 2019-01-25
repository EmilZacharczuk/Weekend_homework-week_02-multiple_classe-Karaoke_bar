require('minitest/autorun')
require("minitest/rg")
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup
    @room_abba = new.Room("Abba")
    @room_rock = new.Room("Rock")
    @room_oldschool = new.Room('Oldschool')
  end


end
