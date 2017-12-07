def center_of(string)
  idx = string.size/2
  return string[idx] if string.size.odd?
  return string[idx - 1] + string[idx]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
