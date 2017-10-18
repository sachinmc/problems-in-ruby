# stack-and-register programming language

# each operation in the language operates on a register
# register, is the current value
# register is not part of the stack
# operation that requires 2 values pop the topmost item from the stack
# (that is, the operation removes the most recently pushed value from stack)
# perform the operation using the poppped value and the register value and,
# store the result back in the register

def minilang(instruction)
  register = 0
  stack = []

  instruction.split.each do |inst|
    begin
      case inst
      when 'PRINT' then puts register
      when 'POP'   then register = stack.pop
      when 'MOD'   then register %= stack.pop
      when 'DIV'   then register /= stack.pop
      when 'MULT'  then register *= stack.pop
      when 'SUB'   then register -= stack.pop
      when 'ADD'   then register += stack.pop
      when 'PUSH'  then stack.push(register)
      else
        raise StandardError, "Invalid Token" unless /^-?\d+$/.match(inst)
        register = inst.to_i
      end
    rescue TypeError
      puts "Empty Stack"
      break
    rescue StandardError => e
      puts e.message
      break
    end
  end
  nil
end

minilang('PRINT')
puts ''
minilang('5 PUSH 3 MULT PRINT')
puts ''
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts ''
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts ''
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
puts ''
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
puts ''
minilang('-3 PUSH 5 SUB PRINT')
puts ''
minilang('6 PUSH')
puts ''
minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
puts ''
minilang('ADD') #empty stack
puts ''
minilang('3s PUSH 5 MULT PRINT') #invalid token
