class FruitMachine

  attr_reader :game_credits

  def initialize
    @game_credits = 0
  end

  def insert(money)
    @game_credits += money
  end

  def pull_lever
    @game_credits -= 1
    "| Black | White | Green | Yellow |"
  end

end
