class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(x_coord = 0, y_coord = 0, direction = 'N')
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
  end

  def status

    "#{@x_coord}, #{@y_coord} facing #{@direction}"

  end

  def move
    if @direction == 'N'
      @y_coord += 1
    elsif @direction == 'E'
      @x_coord += 1
    elsif @direction == 'S'
      @y_coord += -1
    elsif @direction == 'W'
      @x_coord += -1
    end
  end

  def turn(turn_dir)
    if turn_dir == 'R'
      if @direction == 'N'
        @direction = 'E'
      elsif @direction == 'E'
        @direction = 'S'
      elsif @direction == 'S'
        @direction = 'W'
      elsif @direction == 'W'
        @direction = 'N'
      else
        raise 'Incorrect turn direction'
      end
    elsif turn_dir == 'L'
      if @direction == 'N'
        @direction = 'W'
      elsif @direction == 'W'
        @direction = 'S'
      elsif @direction == 'S'
        @direction = 'E'
      elsif @direction == 'E'
        @direction = 'N'
      else
        raise 'Incorrect turn direction'
      end
    end
  end


end
