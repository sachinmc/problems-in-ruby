# running_total.rb


def running_total(array)
  new_array = []
  new_array.push(array[0])
  array.reduce do |sum, element|
    sum = sum + element
    new_array << sum
    sum
  end
  new_array
end

running_total([1,2,3])
