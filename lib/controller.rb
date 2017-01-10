require_relative 'rover'

class Controller

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
