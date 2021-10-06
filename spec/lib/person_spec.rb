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

  describe "#birthday_today?" do
    it 'returns true when the birthday is today' do
      person = Person.new('Lewis', 6, 'October')
      expect(person.birthday_today?).to eq true
    end
  end

  describe "#days_until_birthday" do
    it 'returns the number of days until the users next birthday' do
      person = Person.new('Lewis', 18, 'March')
      expect(person.days_until_birthday).to eq 163
    end
  end
end
