require 'player'

describe Player do
  subject(:player_1) { described_class.new('bob') }
  subject(:player_2) { described_class.new('sonic')}
  let(:player) { double :player }
  let(:Player) { described_class }

  describe '#initialize' do
    it 'returns name' do
      expect(player_1.name).to eq 'bob'
    end

    it 'returns hit points' do
      expect(player_1.hit_points).to eq Player::DEFAULT_HP
    end
  end

  describe '#damage' do
    it 'reduces hit points' do
      expect {player_2.damage}.to change {player_2.hit_points}.by -20
    end
    it 'is dead' do
      5.times do
        player_2.damage
      end
      expect(player_2.dead).to eq true
    end

  end
end
