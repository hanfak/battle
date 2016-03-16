require 'player'

describe Player do
  subject(:player_1) { described_class.new('bob') }
  subject(:player_2) { described_class.new('sonic')}
  let(:player) {double :player}
  let(:Player) {described_class}

  describe '#initialize' do
    it 'returns name' do
      expect(player_1.name).to eq 'bob'
    end

    it 'returns hit points' do
      expect(player_1.hit_points).to eq Player::DEFAULT_HP
    end
  end


  describe '#attack' do
    it 'receive damage' do
      expect(player).to receive(:damage)
      player_1.attack(player)
    end
  end

  describe '#damage' do
    it 'reduces hit points' do
      expect {player_2.damage}.to change {player_2.hit_points}.by -20
    end
  end
end
