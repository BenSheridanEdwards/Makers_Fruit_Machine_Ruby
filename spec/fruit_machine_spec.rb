describe FruitMachine do

  let(:machine) { FruitMachine.new }

  describe '#insert' do
    it 'receives money and converts it into game credits' do
      machine.insert(10)
      expect(machine.game_credits).to eq 10
    end
  end

  describe '#pull_lever' do
    it 'begins a play and returns four colours to the player' do
      machine.insert(10)
      expect(machine.pull_lever).to eq "| Black | White | Green | Yellow |"
    end

    it 'reduces the number of game credits by one' do
      machine.insert(10)
      expect(machine.game_credits).to eq 10
      machine.pull_lever
      expect(machine.game_credits).to eq 9
    end
  end
end
