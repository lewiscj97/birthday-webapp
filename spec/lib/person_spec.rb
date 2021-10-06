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

  describe '#day' do
    it 'returns the day' do
      expect(@person.day).to eq 18
    end
  end

  describe '#month' do
    it 'returns the month' do
      expect(@person.month).to eq "March"
    end
  end
end
