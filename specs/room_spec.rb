require('minitest/autorun')
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @room_abba = Room.new("Abba")
    # @room_rock = Room.new("Rock")
    # @room_oldschool = Room.new('Oldschool')
    @guest_1 = Guest.new("Emil", "Thriller")
    @guest_2 = Guest.new("John", "Stay alive")
    @guest_3 = Guest.new("Eryk", "November rain")
    @song_1 = Song.new("November rain")
    @song_2 = Song.new("Stay alive")
    @song_3 = Song.new("Run of of song names")
  end

  def test_room_theme
    assert_equal("Abba", @room_abba.theme)
  end

  def test_customers_in_the_room_empty
    assert_equal(0, @room_abba.guests.length)
  end

  def test_guest_in_the_room__1_guest
    @room_abba.checking_in_guest(@guest_1)
    assert_equal(1, @room_abba.guests.length)
    assert_equal(["Emil"], @room_abba.guests)
  end
  def test_guest_in_the_room__3_guests
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    @room_abba.checking_in_guest(@guest_1)
    assert_equal(3, @room_abba.guests.length)
    assert_equal(["Emil", "John", "Emil"], @room_abba.guests)
  end
  def test_guest_in_the_room__4_guests
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_3)
    assert_equal("I am sorry but no more guests allowed in this room", @room_abba.checking_in_guest(@guest_1))
  end
  def test_guest_checking_out_with_2_guests
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    @room_abba.checking_out_guest(@guest_2)
    @room_abba.checking_out_guest(@guest_1)
    assert_equal(0, @room_abba.guests.length)
  end
  def test_unexisting_guest_checking_out
    @room_abba.checking_in_guest(@guest_1)
    @room_abba.checking_in_guest(@guest_2)
    @room_abba.checking_out_guest(@guest_3)
    assert_equal(2, @room_abba.guests.length)
  end
#
  def test_empty_songs
    assert_equal(0, @room_abba.songs.length)
  end
  def test_adding_songs_to_room__1_song
    @room_abba.adding_song(@song_1)
    assert_equal(1, @room_abba.songs.length)
    assert_equal(["November rain"], @room_abba.songs)
  end
  def test_adding_songs_to_room__3_songs
    @room_abba.adding_song(@song_1)
    @room_abba.adding_song(@song_2)
    @room_abba.adding_song(@song_1)
    assert_equal(3, @room_abba.songs.length)
  end
  def test_removing_existing_song
    @room_abba.adding_song(@song_1)
    @room_abba.adding_song(@song_2)
    @room_abba.removing_song(@song_1)
    assert_equal(1, @room_abba.songs.length)
  end

  def test_removing_unexisting_song
    @room_abba.adding_song(@song_1)
    @room_abba.adding_song(@song_2)
    @room_abba.removing_song(@song_1)
    @room_abba.removing_song(@song_3)
    assert_equal(1, @room_abba.songs.length)
  end

  def test_guest_favourite_song__exist
    @room_abba.adding_song(@song_2)
    @room_abba.adding_song(@song_1)
    @room_abba.checking_in_guest(@guest_3)
    assert_equal("Whoo", @room_abba.checking_favourite_song(@guest_3))
  end
  def test_guest_favourite_song__not_exist
    @room_abba.adding_song(@song_2)
    @room_abba.checking_in_guest(@guest_3)
    assert_equal("Sorry your favourite song is not in this room", @room_abba.checking_favourite_song(@guest_3))
  end

  def test_entry_fee
    @room_abba.entry_fee
    assert_equal(5.00, @room_abba.entry_fee)
  end
end
