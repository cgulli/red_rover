require_relative './lib/rover'

puts "rover_A initiates first"
rover_A = Rover.new('rover_A', 1, 2, 'N')
puts rover_A.rover_position
puts 'input hint: LMLMLMLMM'
rover_A.read_instructions
puts rover_A.rover_position
puts
puts "rover_B initiates second"
rover_B = Rover.new('rover_B', 3, 3, 'E')
puts rover_B.rover_position
puts 'input hint: MMRMMRMRRM'
rover_B.read_instructions
puts rover_B.rover_position
puts
puts "Final positions summary"
puts rover_A.rover_position
puts rover_B.rover_position
