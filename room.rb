class Room

  attr_reader :theme, :guests, :songs

  def initialize(theme)
    @theme = theme
    @guests = []
    @songs = []
  end

  def checking_in_guest(guest)
    return @guests.push(guest.name)
  end

  def checking_out_guest(guest)
    @guests.each do |person|
      if person == guest.name
        @guests.pop
      end
    end
  end
    # for person in @guests
    #   if person == guest
    #     @guests.pop
    #   end
    # end
  # end
  #
  def adding_song(song)
    return @songs.push(song.title)
  end
  def removing_song(song)
    @songs.each do |item|
      if item == song.title
        @songs.pop
      end
    end
  end
  #
  def checking_favourite_song(guest)
    if @songs.include?(guest.favourite_song)
        p "Whoo"
    else
        p "Sorry your favourite song is not in this room"
    end
  end

end
