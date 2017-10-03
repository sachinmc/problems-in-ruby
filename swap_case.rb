# swap case - upper case char replaced by lower case char and vice a versa

def swapcase(string)
  result = string.chars.each_with_object([]) do |char,a|
    char.upcase! ? char == char.downcase : char.downcase!
    a << char
  end
  result.join
end


puts swapcase('CamelCase') #== 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
