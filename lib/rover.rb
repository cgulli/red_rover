class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(x_coord = 0, y_coord = 0, direction = 'N')
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
  end

  def move
    case @direction
    when'N'
      @y_coord += 1
    when 'E'
      @x_coord += 1
    when'S'
      @y_coord += -1
    when 'W'
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

  def read_instructions
    	puts "Input instructions"

    	instructions = input_action
    	instructions.split("").each do |x|

        if x == "M"
    			then move
    		elsif x == 'L' || x == 'R'
    			then turn(x)
    		else x == "Q" || "q"
    			exit
        end
      end
      rover_position
  end

  def rover_position
    "Rover is at (#{@x_coord}, #{@y_coord}) facing #{@direction}"
  end

  private

  def input_action
    gets.chomp.upcase
  end

end
