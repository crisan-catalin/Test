class MathUtil

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

    numbers[2...numbers.size].each { |x|
      if x > firstNumber
        secondNumber = firstNumber
        firstNumber = x
      elsif x > secondNumber
        secondNumber = x
      end
    }

    [firstNumber, secondNumber]
  end

end
