require 'pry'

class Game
  attr_reader :player1, :player2, :turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def attack(player)
    player == @player2 ? @player2.attacked : @player1.attacked
  end

  def opposing
    @turn == @player1 ? @player2 : @player1
  end

  def change_turn
    @turn == @player1 ? @turn = @player2 : @turn = @player1
  end


end
