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

# Test two_largest_numbers

  def test_two_largest_numbers_returns_nil
    assert_nil(MathUtil.two_largest_numbers(nil))
  end

  def test_two_largest_numbers_empty_array_returns_nil
    assert_equal(nil, MathUtil.two_largest_numbers([]))
  end

  def test_two_largest_numbers_one_element_returns_nil
    assert_equal(nil, MathUtil.two_largest_numbers([0]))
  end

  def test_two_largest_numbers_returns_4_and_3
    assert_equal([4, 3], MathUtil.two_largest_numbers([0, 1, 2, 3, 4]))
  end

  def test_two_largest_numbers_returns_minus_1_and_minus_2
    assert_equal([-1, -2], MathUtil.two_largest_numbers([-1, -2, -3, -4]))
  end

end
