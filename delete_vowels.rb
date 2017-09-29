# delete_vowels.rb
# string.join(' ').delete('aeiouAEIOU').split
# the above is a working solution for first 2 test cases
# for 3rd test case, operating on a string to delete characters returns nothing
# for 'AEIOU'. Therefore instead of working on a string, I will have to work
# on each element of an array

def remove_vowels(string_array)
  string_array.map {|string| string.delete 'aeiouAEIOU'}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
