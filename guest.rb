class Guest

  attr_reader :name, :favourite_song, :wallet

  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
  end

  def guest_can_afford_fee(room)
    if room.entry_fee <= @wallet
      @wallet -= room.entry_fee
    else
      p "Sorry pal, too expensive"
    end
  end
end
