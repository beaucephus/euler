require 'test/unit'
require_relative 'euler_23'

# Test euler_23
class TestEuler23 < Test::Unit::TestCase
  def test_abundant?
    assert_equal(false, abundant?(28))
    assert_equal(true, abundant?(12))
    assert_equal(false, abundant?(13))
  end
end
