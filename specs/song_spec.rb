require('minitest/autorun')
require('minitest/rg')
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("November Rain")
    @song_2 = Song.new("Sweet Caroline")
    @song_3 = Song.new("Stay alive")
  end

  def test_song_title
    assert_equal("November Rain", @song_1.title)
  end

end
