require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :active, :passive

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active = @player_1
    @passive = @player_2
  end

  def attack(player)
    player.damage
  end

  def switch_player(active, passive)
    @passive = active
    @active = passive
  end
end
