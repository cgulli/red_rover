class Rover
  attr_accessor :x_coord, :y_coord, :direction

  def initialize(name = 'rover', x_coord = 0, y_coord = 0, direction = 'N')
    @name = name
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
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
    	puts "Input instructions for #{@name}"

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
    "#{@name} is at (#{@x_coord}, #{@y_coord}) facing #{@direction}"
  end

  private

  def input_action
    gets.chomp.upcase
  end

end
