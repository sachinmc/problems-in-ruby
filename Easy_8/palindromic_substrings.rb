require 'pry'

def substrings_at_start(string)
  len = string.length
  result = []
  len.times do |l|
    result << string.slice(0, l + 1)
  end
  result
end


# Array#concat better so you don't have to use Array#flatten
# result << substrings_at_start(substring)
# result.flatten

def substrings(string)
  result = []
  string.size.times do |idx|
    substring = string.slice(idx, string.size)
    result.concat(substrings_at_start(substring))
  end
  result
end

#def palindromes(string)
#  substrings(string).select { |str| str == str.reverse && str.size != 1 }
#end

# ignoring case and non alphanumeric characters
# def palindromes(string)
#  substrings(string).select do |str|
#    str = str.gsub(/\W+/, '')
#    str.casecmp(str.reverse) && str.size != 1
#  end
# end

# p palindromes('AbcbA')
# p palindromes('bcb') == ['bcb']
# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
