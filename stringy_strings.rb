# method takes on argument, a positive integer, and returns a str of alternating 1s and 0s
# starting with 1 or 0

def stringy(number, num=1)
  str = num.to_s
  until str.length == number
    str.end_with?("1") ? str += "0" : str += "1"
  end
  str
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

puts stringy(6, 0)
