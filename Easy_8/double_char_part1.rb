# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(string)
  result = string.chars.map do |chr|
    chr * 2
  end
  result.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
