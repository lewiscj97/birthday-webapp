require 'date'

class Person
  attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day.to_i
    @month = month
    @birthday = Date.new(today.year, month_to_integer, @day) 
  end

  def birthday_today?
    result = today.mon == month_to_integer && today.mday == @day
  end

  def days_until_birthday
    # if birthday has already been, add another year to the birthday
    (@birthday < today) ? (@birthday.next_year - today).to_i : (@birthday - today).to_i
  end

  private

  def today
    Date.today
  end

  def month_to_integer
    Date::MONTHNAMES.index(@month)
  end
end
