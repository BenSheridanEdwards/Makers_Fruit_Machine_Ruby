describe FruitMachine do

  let(:machine) { FruitMachine.new }

  describe '#insert' do
    it 'receives money and converts it into game credits' do
      machine.insert(10)
      expect(machine.game_credits).to eq 10
    end
  end
end
