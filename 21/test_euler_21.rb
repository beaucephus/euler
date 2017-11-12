require_relative 'euler_21'
require 'test/unit'

# Test euler_21
class TestEuler21 < Test::Unit::TestCase
  def test_d
    assert_equal(284, d(220))
    assert_equal(220, d(284))
  end

  def test_amicable?
    assert_equal(true, amicable?(220))
    assert_equal(true, amicable?(284))
    assert_equal(false, amicable?(221))
    assert_equal(false, amicable?(285))
  end
end
