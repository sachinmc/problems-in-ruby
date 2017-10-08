def fizzbuzz(max)
  # TODO: return an Array
  # Sachin: sovled, rubocop tidy up
  result = []
  for n in (1..max)
    if (n % 15).zero?
      result << 'FizzBuzz'
    elsif (n % 3).zero?
      result << 'Fizz'
    elsif (n % 5).zero?
      result << 'Buzz'
    else
      result << n
    end
  end
  result
end
