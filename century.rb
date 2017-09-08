# century.rb

=begin
def century(year)
  if year/100 == 0 then return "1st century" end
  if year%100 != 0 then return "#{year/100 + 1} century" end
  return "#{year/100} century"
  end
end
=end

require 'pry'
def append(result)
  hash = Hash.new {|h,k| h[k] = 'th'}
  hash['1'], hash['2'], hash['3'] = 'st', 'nd', 'rd'
  hash['01'], hash['02'], hash['03'] = 'st', 'nd', 'rd'
  hash['11'], hash['12'], hash['13'] = ['th'] * 3
  #binding.pry
  if hash.keys.include?(result)
    "#{result}#{hash[result]}"
  elsif result.size == 2
    "#{result}#{hash[result.slice(-1)]}"
  else
    "#{result}#{hash[result.slice(-2..-1)]}"
  end
end

def century(year)
  result = ''
  if year/100 == 0 then result = 1 end
  if year%100 != 0
    result = year/100 + 1
  else
    result = year/100
  end
  append(result.to_s)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
