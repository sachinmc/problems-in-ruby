require 'pry'

ROMAN =
  { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000,
    'IV' => 4, 'IX' => 9, 'XL' => 40, 'XC' => 90, 'CD' => 400, 'CM' => 900 }

def roman_converter(roman_string)
  # TODO: return the Roman numeral string's corresponding integer
  number = []
  roman_array = roman_string.split('')
  idx = 0
  roman_array.each do
    unless roman_array[idx + 1].nil?
      roman_key = roman_array[idx] + roman_array[idx + 1]
    end
    if ROMAN.include?(roman_key)
      number << ROMAN[roman_key]
      idx += 2
    elsif roman_array[idx] != nil
      roman_key = roman_array[idx]
      number << ROMAN[roman_key]
      idx += 1
    end
  end
  number.reduce(:+)
end


# split roman numerals into individual strings
# iterate through roman array, repeat until end of string
# group 2 characters, check hash for a value, if value exists, then add it to array
# if value do not exist, process the 1st character, then add its value to an array
