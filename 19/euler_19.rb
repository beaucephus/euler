# https://projecteuler.net/problem=19

# Year
class Year
  def leap_year?(year)
    return false if (year % 100).zero? && !(year % 400).zero? # but not on a century unless it is divisible by 400
    return true if (year % 4).zero? # A leap year occurs on any year evenly divisible by 4
    false
  end
end

# Month
class Month

end

# Day
class Day
end

# Date
class Date
  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
  end

  def next_day
    if @month == 11 && @day == 31
      @year += 1
      @month = 0
      @day = 0
    elsif @month == 1
      if
      @month += 1
      @day = 0
    else
      @day += 1
    end
  end
end
