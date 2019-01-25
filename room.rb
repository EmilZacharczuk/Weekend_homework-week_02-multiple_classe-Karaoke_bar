class Room

  attr_reader :theme

  def initialize(theme)
    @theme = theme
    @cutomers = []
    @songs = []
  end

end
