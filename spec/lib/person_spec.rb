require 'person'

describe Person do
  before(:each) do
    @person = Person.new('Lewis', 18, 'March')
  end

  describe '#name' do
    it 'returns the name' do
      expect(@person.name).to eq "Lewis"
    end
  end
end