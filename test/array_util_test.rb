require_relative "../src/array_util"
require "test/unit"

class TestArrayUtil < Test::Unit::TestCase

# Test sum_even_numbers

  def test_sum_even_numbers_nil_value_returns_nil
    assert_nil(ArrayUtil.sum_even_numbers(nil))
  end

  def test_sum_even_numbers_empty_array_returns_0
    assert_equal(0, ArrayUtil.sum_even_numbers([]))
  end

  def test_sum_even_numbers_odd_array_returns_0
    assert_equal(0, ArrayUtil.sum_even_numbers([0, 1, 3, 5]))
  end

  def test_sum_even_numbers_even_array_returns_12
    assert_equal(12, ArrayUtil.sum_even_numbers([0, 2, 4, 6]))
  end

  def test_sum_even_numbers_even_array_with_negative_value_returns_8
    assert_equal(8, ArrayUtil.sum_even_numbers([0, -2, 4, 6]))
  end

# Test two_largest_numbers

  def test_two_largest_numbers_nil_value_returns_nil
    assert_nil(ArrayUtil.two_largest_numbers(nil))
  end

  def test_two_largest_numbers_empty_array_returns_nil
    assert_equal(nil, ArrayUtil.two_largest_numbers([]))
  end

  def test_two_largest_numbers_one_element_array_returns_nil
    assert_equal(nil, ArrayUtil.two_largest_numbers([0]))
  end

  def test_two_largest_numbers_positive_numbers_array_returns_4_and_3
    assert_equal([4, 3], ArrayUtil.two_largest_numbers([0, 1, 2, 3, 4]))
  end

  def test_two_largest_numbers_negative_numbers_array_returns_minus_1_and_minus_2
    assert_equal([-1, -2], ArrayUtil.two_largest_numbers([-1, -2, -3, -4]))
  end

# Test exists_duplicates

  def test_exists_duplicates_nil_value_returns_nil
    assert_nil(ArrayUtil.exists_duplicates(nil))
  end

  def test_exists_duplicates_one_element_array_returns_nil
    assert_equal(nil, ArrayUtil.exists_duplicates([0]))
  end

  def test_exists_duplicates_with_a_duplicate_is_true
    assert_true(ArrayUtil.exists_duplicates([1, 2, 3, 1]))
  end

  def test_exists_duplicates_with_multiple_duplicates_is_true
    assert_true(ArrayUtil.exists_duplicates([1, 2, 3, 1, 1, 1, 2, 3, 1]))
  end

  def test_exists_duplicates_without_duplicates_is_false
    assert_false(ArrayUtil.exists_duplicates([1, 2, 3]))
  end

  def test_exists_duplicates_with_negative_duplicates_is_true
    assert_true(ArrayUtil.exists_duplicates([-1, 2, 3, -1]))
  end

end
