# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# using regex
#
# def uppercase?(string)
#   string.gsub!(/[^A-Za-z]/, '')
#   /\b[A-Z]+\b/ =~ string || string.empty? ? true : false
# end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
