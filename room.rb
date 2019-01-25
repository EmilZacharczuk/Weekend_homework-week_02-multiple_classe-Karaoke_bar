class Room

  attr_reader :theme, :customers

  def initialize(theme)
    @theme = theme
    @customers = []
    @songs = []
  end

  def checking_in_guest(guest)
    return @customers.push(guest)
  end

  # def customers_in_the_room
  #   return @customers.length
  # end
end
