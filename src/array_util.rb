class ArrayUtil

  def self.sum_even_numbers(numbers)
    numbers&.select(&:even?)&.sum
  end

  def self.two_largest_numbers(numbers)
    return nil if numbers.nil? ||  numbers.size < 2

    firstNumber = numbers[0]
    secondNumber = numbers[1]

    if firstNumber < secondNumber
      firstNumber, secondNumber = secondNumber, firstNumber
    end

    numbers[2...numbers.size].each do |x|
      if x > firstNumber
        secondNumber = firstNumber
        firstNumber = x
      elsif x > secondNumber
        secondNumber = x
      end
    end

    [firstNumber, secondNumber]
  end

  def self.exists_duplicates(numbers)
    return nil if numbers.nil? || numbers.size < 2

    numbers.each do |x|
      if numbers[x.abs - 1].to_i < 0
        return true
      else
        numbers[x.abs - 1] = numbers[x.abs - 1].to_i * (-1)
      end
    end

    false
  end

end
