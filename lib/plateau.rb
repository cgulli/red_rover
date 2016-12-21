class Plateau
attr_accessor :roverA, :roverB, :x, :y

  def initialize(x, y, roverA, roverB)
  @x = x + 1
  @y = y + 1
  @roverA = roverA
  @roverB = roverB
  end

end
