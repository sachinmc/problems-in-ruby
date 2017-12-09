
def substrings_at_start(string)
  result =[]
  string.chars.reduce do |acc, sum|
    result << acc
    acc + sum
  end
  result << string.dup
end






p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
