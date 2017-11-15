def featured(num)
  str = '-> There is no possible number that fulfills those requirements'
  return str if num >= 9_876_543_210
  loop do
    num += 1
    break if num.odd? && (num%7).zero? && (num.digits.uniq == num.digits)
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# LS solution

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14 # makes sure we get an odd multiple of 7 (7,14,21,28,35..)
    break if number >= 9_876_543_210
  end

  '-> There is no possible number that fulfills those requirements'
end
