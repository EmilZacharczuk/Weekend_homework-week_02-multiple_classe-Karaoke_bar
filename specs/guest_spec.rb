require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Emil", "Thriller")
    @guest_2 = Guest.new("John", "November rain")
    @guest_3 = Guest.new("Peter", "Like a pryer")
  end


  def test_guest_name
    assert_equal("Emil", @guest_1.name)
  end

  def test_guest_favourite_song
    assert_equal("Thriller", @guest_1.favourite_song)
  end

end
