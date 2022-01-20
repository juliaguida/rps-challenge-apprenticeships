require 'turn'

describe Turn do

  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Juanita", "player_shape" => :rock, "opponent_shape" => :rock} }

  describe '#player_name' do 
    it 'returns the name of the player' do 
    expect(turn.player_name).to eq 'Juanita'
    end 
  end 

  describe 'player_shape' do 
    it 'returns player options' do
      expect(turn.player_shape).to eq :rock
    end
  end
  
  describe '#opponent_shape' do 
    it 'returns the opponent option'do 
      expect(turn.opponent_shape).to eq :rock
    end
  end 
end