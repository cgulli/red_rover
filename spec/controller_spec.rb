require 'controller'

describe Controller do

  context '#it receives instructions' do
      rover = Rover.new
      it 'receives instructions for navigation' do
        puts 'hint: mmlm'
        rover.read_instructions
        expect(rover.rover_position).to eq "rover is at (-1, 2) facing W"
    end
  end  
end
