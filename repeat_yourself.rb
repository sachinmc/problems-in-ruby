# method takes 2 arguments and prints the string as many times as the integer indicates

def repeat(string, number)
  number.times {|num| puts string}
end

repeat('Hello', 10)
