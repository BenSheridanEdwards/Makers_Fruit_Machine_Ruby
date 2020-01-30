module Slots

  SLOTS = ["Black", "White", "Green", "Yellow"]

  def self.random
    SLOTS.sample(4)
  end
end
