require 'plateau'

describe Plateau do

context '#initialize' do
  it 'initializes a plateau as a grid with two rovers on it' do
  plateau = Plateau.new(5, 5, 'roverA', 'roverB')
  expect(plateau.x).to eq (6)
  expect(plateau.y).to eq (6)
  expect(plateau.rover1).to eq ('roverA')
  expect(plateau.rover2).to eq ('roverB')
  end
end



end
