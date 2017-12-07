# leading substrings

def substrings_at_start(string)
  array = []
  string = string + ''
  string.chars.reduce do |acc, ele|
    array << acc
    acc + ele
  end
  array.push(string)
end

def substrings(string)
  array = []
  while string.size >= 1
  array << substrings_at_start(string)
  string[0] = ''
  end
array
end

p substrings('abcde')
