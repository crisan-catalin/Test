require_relative "../src/math_util"
require "test/unit"

class TestMathUtil < Test::Unit::TestCase

# Test sum_even_numbers

  def test_sum_even_numbers_returns_nil
    assert_nil(MathUtil.sum_even_numbers(nil))
  end

  def test_sum_even_numbers_empty_array_returns_0
    assert_equal(0, MathUtil.sum_even_numbers([]))
  end

  def test_sum_even_numbers_returns_0
    assert_equal(0, MathUtil.sum_even_numbers([0, 1, 3, 5]))
  end

  def test_sum_even_numbers_returns_12
    assert_equal(12, MathUtil.sum_even_numbers([0, 2, 4, 6]))
  end

  def test_sum_even_numbers_returns_8
    assert_equal(8, MathUtil.sum_even_numbers([0, -2, 4, 6]))
  end

end
