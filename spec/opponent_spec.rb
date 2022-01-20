require 'Opponent'

describe Opponent do 
  subject(:opponent) { described_class.new }

  describe '#option' do
    it 'returns a random option' do
      expect(Opponent::SHAPE).to include opponent.shape
    end
  end
end