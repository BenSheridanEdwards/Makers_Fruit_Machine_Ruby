require_relative 'slots'

class FruitMachine

  attr_reader :game_credits, :outcome

  def initialize
    @game_credits = 0
    @slots = ["Black", "White", "Green", "Yellow"]
  end

  def insert(money)
    @game_credits += money
  end

  def pull_lever
    @game_credits -= 1
    @outcome = Slots.random
    @display = @outcome.map { |colour| "#{colour}" }.join(" | ")
    return @display
  end

  def player_wins? 
    if game_jackpot?
      true
    end
  end

  private

  def game_jackpot?
    @outcome.uniq.size == 1
  end
end
