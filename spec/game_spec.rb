require 'game'

describe Game do 
  let(:game) { described_class.new }
  let(:Game) { described_class }
  let(:player) { double :player }

  describe '#attack' do
    it 'attacks another player' do
      expect(player).to receive(:damage)
      game.attack(player)
    end
  end
end
