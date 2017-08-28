
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


h = {}
array = []
main_array = []

words.each do |val|
  h[val] = val.chars.sort.join
end

h.each_value do |val|
  h.each_key do |key|
    if val == h[key]
      array << key
    end
  end
  main_array << array
  array = []
end

p main_array.uniq
