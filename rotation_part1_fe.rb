# rotate a string

def rotate_array(array)
  array.slice(1...array.size) + array.slice(0...1)
end

def rotate_string(string)
  rotate_array(string)
end

def rotate_number(number)
  rotate_string(number.to_s).to_i
end
