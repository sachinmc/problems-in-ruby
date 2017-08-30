# method that counts the number of occurances of each element in an array

def count_occurances(item_list)
  hash = {}
  item_list.each do |item|
    if hash.has_key?(item)
      hash[item] += 1
    else
      hash[item] = 1
    end
  end
  hash.each {|k,v| puts "#{k} => #{v}"}
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurances(vehicles)
