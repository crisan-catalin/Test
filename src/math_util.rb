class MathUtil

  def self.sum_even_numbers(numbers)
    numbers&.select(&:even?)&.sum
  end

end
