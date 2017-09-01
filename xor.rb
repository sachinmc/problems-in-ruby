# xor implementation

def xor?(cond1, cond2)
  if cond1 == true
    if cond2 == false
      return true
    end
  end

  if cond2 == true
    if cond1 == false
      return true
    end
  end

  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
