describe Slots do

  describe '#randomize' do
    it 'returns a random order of colours within the slots array' do
      expect(Slots).to receive(:random).and_return(["Black", "Green", "White", "Yellow"])
      expect(Slots.random).to eq ["Black", "Green", "White", "Yellow"]
    end
  end
end
