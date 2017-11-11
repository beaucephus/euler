# https://projecteuler.net/problem=19

def leap_year?(year)
  return false if (year % 100).zero? && !(year % 400).zero? # but not on a century unless it is divisible by 400
  return true if (year % 4).zero? # A leap year occurs on any year evenly divisible by 4
  false
end

# Date
class Date
  attr_reader :year, :month, :day, :dayofweek

  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
    @dayofweek = 1
  end

  def next_dayofweek
    if @dayofweek == 7
      @dayofweek = 1
    else
      @dayofweek += 1
    end
  end

  def next_day
    next_dayofweek
    if @month == 12 && @day == 31
      @year += 1
      @month = 1
      @day = 1
    elsif @month == 2 && leap_year?(@year) && @day == 29
      @month += 1
      @day = 1
    elsif @month == 2 && !leap_year?(@year) && @day == 28
      @month += 1
      @day = 1
    elsif [1, 3, 5, 7, 8, 10].include?(@month) && @day == 31
      @month += 1
      @day = 1
    elsif [4, 6, 9, 11].include?(@month) && @day == 30
      @month += 1
      @day = 1
    else
      @day += 1
    end
  end
end

cur_date = Date.new(1900, 1, 1)
cur_date.instance_variable_set('@dayofweek', 2)

total = 0
until cur_date.year == 2001
  if cur_date.year < 1901
    cur_date.next_day
  else
    total += 1 if cur_date.day == 1 && cur_date.dayofweek == 1
    cur_date.next_day
  end
end

puts total
