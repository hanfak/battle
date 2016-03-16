require 'game'

describe Game do
  let(:game) { described_class.new(:player_1, :player_2, player_class) }
  let(:Game) { described_class }
  let(:player) { double :player }
  let(:player_class) { double :player_class, new: player }
  describe '#initialize' do
    it 'has a player one' do
      expect(game.player_1).to eq player
    end

    it 'has a player one' do
      expect(game.player_2).to eq player
    end
  end

  describe '#attack' do
    it 'attacks another player' do
      expect(player).to receive(:damage)
      game.attack(player)
    end
  end
end
