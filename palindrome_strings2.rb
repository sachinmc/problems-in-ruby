# detect palindrome, case insensitive, ignore non alpha numeric characters

def real_palindrome?(string)
  # if there is nothing to downcase, then nil is returned
  # so be wary of chaining methods
  string.downcase!
  string.gsub!(/[^\w]/, '')
  string == string.reverse
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
