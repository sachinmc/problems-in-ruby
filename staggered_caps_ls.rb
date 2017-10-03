# staggered caps
# also using keyword argument so that the caller can request the first character
# to be downcased than upcased. 

def staggered_case(string, need_upper=true)
  result = ''
  #need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', false) #== 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'
