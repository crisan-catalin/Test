class ArrayUtil

  def self.sum_even_numbers(numbers)
    numbers.select(&:even?).sum
  end

  def self.two_largest_numbers(numbers)
    return numbers[0] if numbers.size == 1

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
    return false if numbers.size < 2

    numbers.each do |x|
      numberAsIndex = x.abs - 1
      if numbers[numberAsIndex] < 0
        return true
      else
        numbers[numberAsIndex] = -numbers[numberAsIndex]
      end
    end

    false
  end

end
