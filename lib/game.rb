require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  
  def initialize(player_1, player_2, player_class = Player)
    @player_1 = player_class.new player_1
    @player_2 = player_class.new player_2
  end

  def attack(player)
    player.damage
  end
end
