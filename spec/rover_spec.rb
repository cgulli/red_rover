require 'rover'

describe Rover do
  context '#initialize' do
    rover1 = Rover.new
    it 'has a default start position' do
      expect(rover1.x_coord).to eq 0
      expect(rover1.y_coord).to eq 0
      expect(rover1.direction).to eq 'N'
    end
  end


  context '#it moves and turns' do
    rover2 = Rover.new
    it 'moves one grid space' do
      rover2.move
      expect(rover2.y_coord).to eq 1
    end

    it 'turns rover to face a different direction' do
      rover2.turn('L')
      expect(rover2.direction).to eq 'W'
    end

    context '#it receives instructions' do
      rover3 = Rover.new
      it 'receives instructions for navigation' do
        rover3.read_instructions
        expect(rover3.rover_position).to eq "Rover is at (-1, 2) facing W"
      end
    end
  end
end
