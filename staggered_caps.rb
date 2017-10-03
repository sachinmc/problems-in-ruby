# staggered code

def staggered_case(string)
  result = []
  characters = string.chars
  characters.each_index do |index|
    index.even? ? characters[index].upcase! : characters[index].downcase!
    result << characters[index]
  end
  result.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
