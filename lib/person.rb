require 'date'

class Person
  attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def birthday_today?
    today = Date.today
    result = today.mon == month_to_integer && today.mday == @day.to_i
  end

  private

  def month_to_integer
    Date::MONTHNAMES.index(@month)
  end
end
