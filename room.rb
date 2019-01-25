class Room

  attr_reader :theme, :guests, :songs, :maximum_capacity

  def initialize(theme)
    @theme = theme
    @guests = []
    @songs = []
    @maximum_capacity = 3
  end

  def checking_in_guest(guest)
    if @guests.length  <= @maximum_capacity
      return @guests.push(guest.name)
    else
      return p "I am sorry but no more guests allowed in this room"
    end
  end


  def checking_out_guest(guest)
    @guests.each do |person|
      if person == guest.name
        @guests.pop
      end
    end
  end
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
