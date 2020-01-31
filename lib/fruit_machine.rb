require_relative 'slots'

class FruitMachine

  SINGLE_PLAY_FEE = 1
  FLOAT = 50

  attr_reader :game_credits, :outcome

  def initialize
    @game_credits = 0
    @money = FLOAT
    @slots = ["Black", "White", "Green", "Yellow"]
  end

  def insert(money)
    @game_credits += money / SINGLE_PLAY_FEE
    @money += money
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
    elsif game_half_jackpot?
      true
    elsif game_adjacent_colour?
      true
    end
  end

  def payout
    return @money if game_jackpot?
    return @money / 2 if game_half_jackpot?
    return SINGLE_PLAY_FEE * 5 if game_adjacent_colour?
  end

  private

  def game_jackpot?
    @outcome.uniq.size == 1
  end

  def game_half_jackpot?
    @outcome.uniq.size == 4
  end

  def game_adjacent_colour?
    @outcome.each_with_index { |element, index| return true if element == @outcome[index + 1] }
  end
end
