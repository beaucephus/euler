require_relative 'euler_19'
require 'test/unit'

# Test euler_19
class TestEuler19 < Test::Unit::TestCase
  def test_leap_year
    test_years = [
      [0, true],
      [1, false],
      [4, true],
      [100, false],
      [400, true]
    ]
    test_years.each do |test_year|
      assert_equal(test_year[1], leap_year?(test_year[0]))
    end
  end

  def test_date_initialize
    test_date = Date.new(1901, 3, 1, 1)
    assert_equal(1901, test_date.year)
    assert_equal(3, test_date.month)
    assert_equal(1, test_date.day)
    assert_equal(1, test_date.dayofweek)
  end

  def test_next_dayofweek
    test_date = Date.new(1901, 1, 1, 1)
  end

  def test_next_day
    good_dates = [
      [Date.new(1901, 1, 1), 1901, 1, 2],
      [Date.new(1901, 1, 31), 1901, 2, 1],
      [Date.new(1901, 2, 28), 1901, 3, 1],
      [Date.new(2000, 2, 29), 2000, 3, 1],
      [Date.new(1901, 3, 31), 1901, 4, 1],
      [Date.new(1901, 4, 30), 1901, 5, 1],
      [Date.new(1901, 5, 31), 1901, 6, 1],
      [Date.new(1901, 6, 30), 1901, 7, 1],
      [Date.new(1901, 7, 31), 1901, 8, 1],
      [Date.new(1901, 8, 31), 1901, 9, 1],
      [Date.new(1901, 9, 30), 1901, 10, 1],
      [Date.new(1901, 10, 31), 1901, 11, 1],
      [Date.new(1901, 11, 30), 1901, 12, 1],
      [Date.new(1901, 12, 31), 1902, 1, 1]
    ]
    bad_dates = [
      [Date.new(1901, 1, 31), 1901, 1, 32],
      [Date.new(1901, 2, 28), 1901, 2, 29],
      [Date.new(2000, 2, 29), 2000, 2, 30],
      [Date.new(1901, 3, 31), 1901, 3, 32],
      [Date.new(1901, 4, 30), 1901, 4, 31],
      [Date.new(1901, 5, 31), 1901, 5, 32],
      [Date.new(1901, 6, 30), 1901, 6, 31],
      [Date.new(1901, 7, 31), 1901, 7, 32],
      [Date.new(1901, 8, 31), 1901, 8, 32],
      [Date.new(1901, 9, 30), 1901, 9, 31],
      [Date.new(1901, 10, 31), 1901, 10, 32],
      [Date.new(1901, 11, 30), 1901, 11, 31],
      [Date.new(1901, 12, 31), 1901, 12, 32]
    ]
    good_dates.each do |good_date|
      good_date[0].next_day
      assert_equal(good_date[1], good_date[0].year)
      assert_equal(good_date[2], good_date[0].month)
      assert_equal(good_date[3], good_date[0].day)
    end
    bad_dates.each do |bad_date|
      bad_date[0].next_day
      assert_not_equal(bad_date[2], bad_date[0].month)
      assert_not_equal(bad_date[3], bad_date[0].day)
    end
  end
end
