class Player
  attr_reader :name, :hit_points

  DEFAULT_HP = 100
  DEFAULT_ATTACK = 20

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.damage
  end

  def damage
    reduce_hit_points_by(DEFAULT_ATTACK)
  end

  private

    def reduce_hit_points_by(amount)
      @hit_points -= amount
    end
end
