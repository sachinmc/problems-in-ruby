def greetings(array, hash)
  name = array.join(' ')
  title_occupation = hash.values.join(' ')
  "Hello, #{name}! Nice to have a #{title_occupation} around"
end

puts greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
