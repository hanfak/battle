require 'player'

describe Player do
  subject(:player) {described_class.new('bob')}
  it 'returns name' do
    expect(player.name).to eq 'bob'
  end
end
