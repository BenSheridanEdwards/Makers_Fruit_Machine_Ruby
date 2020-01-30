class FruitMachine

  attr_reader :game_credits

  def initialize
    @game_credits = 0
    @slots = ["Black", "White", "Green", "Yellow"]
  end

  def insert(money)
    @game_credits += money
  end

  def pull_lever
    @game_credits -= 1
    outcome = @slots.sample(4)
    display = outcome.map { |colour| "#{colour}"}
    return display.join(" | ")
  end

end
