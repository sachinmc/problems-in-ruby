# takes 2 string arguments, determines the longest string, then returns result of
# concatenating the shorter string, the longer string, and the shorter string (once again)

def short_long_short(str1, str2)
  str1.size < str2.size ? "#{str1}" "#{str2}" "#{str1}" : "#{str2}" "#{str1}" "#{str2}"
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
puts short_long_short('hello', 'hello')
puts short_long_short('hello', 'world')
