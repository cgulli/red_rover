class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(name = 'rover', x_coord = 0, y_coord = 0, direction = 'N')
    @name = name
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
    @compass = ['N', 'E', 'S', 'W']
  end

  def move
    case @direction
    when'N' then @y_coord += 1
    when 'E' then @x_coord += 1
    when'S' then @y_coord += -1
    when 'W' then  @x_coord += -1
    end
  end

  def turn(turn_dir)
    if turn_dir == 'R'
      new_dir_index = (@compass.index(@direction) + 1) % 4
      @direction = @compass[new_dir_index]
    elsif turn_dir == 'L'
      new_dir_index = (@compass.index(@direction) - 1) % 4
      @direction = @compass[new_dir_index]
      else
        raise 'Incorrect turn direction'
    end
  end
end
