class Room

  attr_reader :theme, :guests, :songs

  def initialize(theme)
    @theme = theme
    @guests = []
    @songs = []
  end

  def checking_in_guest(guest)
    return @guests.push(guest)
  end

  def checking_out_guest(guest)
    @guests.each do |person|
      if person == guest
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

  def adding_song(song)
    return @songs.push(song)
  end
end
