# multiplicative average

def show_multiplicative_average(array)
  sprintf("%.3f", "#{array.inject(:*)/array.size.to_f}")
end

puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
