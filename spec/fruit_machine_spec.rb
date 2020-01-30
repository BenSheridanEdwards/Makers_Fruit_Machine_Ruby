describe FruitMachine do

  let(:machine) { FruitMachine.new }

  describe '#insert' do
    it 'receives money and converts it into game credits' do
      machine.insert(10)
      expect(machine.game_credits).to eq 10
    end
  end

  describe '#pull_lever' do
    it 'begins a play and returns four random colours to the player' do
      machine.insert(10)
      expect(machine).to receive(:pull_lever).and_return("Black | White | Green | Yellow")
      expect(machine.pull_lever).to eq "Black | White | Green | Yellow"
    end

    it 'reduces the number of game credits by one' do
      machine.insert(10)
      expect(machine.game_credits).to eq 10
      machine.pull_lever
      expect(machine.game_credits).to eq 9
    end
  end

  describe '#player_wins?' do
    it 'returns true if a four of the same colour is displayed' do
      expect(Slots).to receive(:random).and_return(["Black", "Black", "Black", "Black"])
      machine.pull_lever
      expect(machine.player_wins?).to be true
    end
  end
end