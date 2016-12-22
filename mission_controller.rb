require_relative './lib/rover'

puts "Rover A initiates first"
rover_A = Rover.new('rover_A', 1, 2, 'N')
puts rover_A.rover_position
rover_A.read_instructions
puts rover_A.rover_position

puts "Rover B initiates second"
rover_B = Rover.new('rover_B', 3, 3, 'E')
puts rover_B.rover_position
rover_B.read_instructions
puts rover_B.rover_position

puts "Final positions summary"
puts rover_A.rover_position
puts rover_B.rover_position
