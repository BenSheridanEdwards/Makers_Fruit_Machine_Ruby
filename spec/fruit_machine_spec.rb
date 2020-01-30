describe FruitMachine do

  let(:machine) { FruitMachine.new }

  describe '#insert' do
    it 'receives money and converts it into game credits' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE * 10)
      expect(machine.game_credits).to eq 10
    end
  end

  describe '#pull_lever' do
    it 'begins a play and returns four random colours to the player' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(machine).to receive(:pull_lever).and_return("Black | White | Green | Yellow")
      expect(machine.pull_lever).to eq "Black | White | Green | Yellow"
    end

    it 'reduces the number of game credits by one' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(machine.game_credits).to eq 1
      machine.pull_lever
      expect(machine.game_credits).to eq 0
    end
  end

  describe '#player_wins?' do
    it 'returns true if a four of the same colour is displayed' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(Slots).to receive(:random).and_return(["Black", "Black", "Black", "Black"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
    end

    it 'returns true if a all four slots are different colours' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(Slots).to receive(:random).and_return(["Black", "White", "Green", "Yellow"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
    end

    it 'returns true if an two adjacent slots are the same' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(Slots).to receive(:random).and_return(["Black", "White", "White", "Yellow"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
    end
  end

  describe '#payout' do
    it 'pays out the jackpot when the display is four of the same colour' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE)
      expect(Slots).to receive(:random).and_return(["Black", "Black", "Black", "Black"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
      expect(machine.payout).to eq FruitMachine::FLOAT + FruitMachine::SINGLE_PLAY_FEE
    end

    it 'pays out a half jackpot when the display is four different colours' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE * 2)
      expect(Slots).to receive(:random).and_return(["Black", "Green", "Yellow", "White"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
      expect(machine.payout).to eq(FruitMachine::FLOAT / 2) + FruitMachine::SINGLE_PLAY_FEE
    end

    it 'pays out 5 when the display contains two of the same colours adjacent to each other' do
      machine.insert(FruitMachine::SINGLE_PLAY_FEE * 2)
      expect(Slots).to receive(:random).and_return(["Black", "White", "White", "Yellow"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
      expect(machine.payout).to eq 5 * FruitMachine::SINGLE_PLAY_FEE
    end
  end
end
