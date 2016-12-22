require 'rover'

describe Rover do

  context '#initialize' do
    rover = Rover.new
    it 'has a default start position' do
      expect(rover.x_coord).to eq 0
      expect(rover.y_coord).to eq 0
      expect(rover.direction).to eq 'N'
    end
  end


  context '#it moves and turns' do
    rover = Rover.new
    it 'moves one grid space' do
      rover.move
      expect(rover.y_coord).to eq 1
    end

    it 'turns rover to face a different direction' do
      rover.turn('L')
      expect(rover.direction).to eq 'W'
    end
  end

  context '#it receives instructions' do
      rover = Rover.new
      it 'receives instructions for navigation' do
        rover.read_instructions
        # mmlm
        expect(rover.rover_position).to eq "rover is at (-1, 2) facing W"
    end
  end
end
