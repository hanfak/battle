require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:Game) { described_class }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#initialize' do
    it 'has a player one' do
      expect(game.player_1).to eq player1
    end

    it 'has a player one' do
      expect(game.player_2).to eq player2
    end

    it 'it initializes with player one active' do
      expect(game.active).to eq player1
    end

    it 'it initializes with player one active' do
      expect(game.passive).to eq player2
    end
  end

  describe '#attack' do
    it 'attacks another player' do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end


  end
  describe
  it 'passive loses' do

  end


  describe '#switch_player' do
    it 'switches the active and passive players' do
      game.switch_player(player1,player2)
      expect(game.passive).to eq player1
    end

    it 'swithes the active player' do
      game.switch_player(player1,player2)
      expect(game.passive).to eq player1
    end
  end
end
