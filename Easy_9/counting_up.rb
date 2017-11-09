# Write a method that takes an integer argument, and returns
# an Array of all integers, in sequence, between 1 and the argument.

# int +ve
def sequence(int)
  (1..int).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# if int -ve
def sequence(int)
  int > 0 ? (1..int).to_a : (int..-1).to_a
end 
