require 'rover'

describe Rover do
  rover1 = Rover.new
  context '#initialize' do
    it 'has a default start position' do
      expect(rover1.x_coord).to eq 0
      expect(rover1.y_coord).to eq 0
      expect(rover1.direction).to eq 'N'
    end

    it 'displays the status of the rover' do
      expect(rover1.status).to eq '0, 0 facing N'
    end

  end


  context '#it follows move commands' do

    it 'moves one grid space' do
      rover1.move
      expect(rover1.y_coord).to eq 1
    end

    it 'turns rover to face a different direction' do
      rover1.turn('L')
      expect(rover1.direction).to eq 'W'
    end


  end
end
