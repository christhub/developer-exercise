class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    new_sentence = []
    punctuation = ""
    str_split = str.split
    str_split.each do |word|
      if word[-1] =~ /[[:punct:]]/
        punctuation = word[-1]
      else
        punctuation = ""
      end
      if word.length > 4 && word[0] == word[0].upcase
        new_sentence << "Marklar" + punctuation
      elsif word.length > 4
        new_sentence << "marklar" + punctuation
      else
        new_sentence << word
      end
    end
    new_sentence.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    numbers = []
    sum = 0
    (0..nth).each do |number|
      if number < 2
        numbers << number
      else
        numbers << numbers[-1] + numbers[-2]
      end
    end
    numbers.each do |number|
      if number % 2 == 0
        sum = sum + number
      end
    end
    sum
  end

end
