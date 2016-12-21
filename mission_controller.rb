require_relative './lib/rover'

puts "Rover A initiates first"
roverA = Rover.new('A', 1, 2, 'N')
puts roverA.rover_position
roverA.read_instructions
puts roverA.rover_position

puts "Rover B initiates second"
roverB = Rover.new('B', 3, 3, 'E')
puts roverB.rover_position
roverB.read_instructions
puts roverB.rover_position

puts "Final positions summary"
puts roverA.rover_position
puts roverB.rover_position
