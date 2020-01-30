class FruitMachine

  attr_reader :game_credits

  def initialize
    @game_credits = 0
  end

  def insert(money)
    @game_credits += money
  end

end
