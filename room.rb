class Room

  attr_reader :theme, :guests

  def initialize(theme)
    @theme = theme
    @guests = []
    @songs = []
  end

  def checking_in_guest(guest)
    return @guests.push(guest)
  end

  def checking_out_guest(guest)
    for person in @guests
      if person == guest
        @guests.pop
      end
    end
  end
end
