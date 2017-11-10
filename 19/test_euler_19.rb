require_relative 'euler_19'
require 'test/unit'

# Test euler_19
class TestEuler19 < Test::Unit::TestCase
  def test_leap_year
    assertions = [
      [0, true],
      [1, false],
      [4, true],
      [100, false],
      [400, true]
    ]
    assertions.each do |assertion|
      assert_equal(assertion[1], leap_year?(assertion[0]))
    end
  end
end
