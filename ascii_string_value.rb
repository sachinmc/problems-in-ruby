def ascii_value(string)
  return 0 if string == ''
  string.chars.map(&:ord).reduce(:+)
end

asascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
