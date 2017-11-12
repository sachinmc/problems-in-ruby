#fizzbuzz
def fizzbuzz(start, finish)
  result = []
  while start <= finish
    if start % 15 == 0
      result << "FizzBuzz"
    elsif start % 5 == 0
      result << "Buzz"
    elsif start % 3 == 0
      result << "Fizz"
    else
      result << start
    end
    start += 1
  end
  result.join(', ')
end
