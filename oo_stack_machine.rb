# miniature stack-and-register machine

class EmptyStackError < StandardError; end

class Minilang

  attr_accessor :register
  attr_reader :stack

  def initialize(program)
    @program = program.split
    @register = 0
    @stack = []
  end

  def eval
    @program.each do |inst|
      begin
        if /^-?\d+$/.match(inst)
          send "UPDATE", inst.to_i
        else
          send inst
        end
        raise EmptyStackError if register == nil
      rescue TypeError, EmptyStackError
        puts "Empty Stack!"
        break
      rescue NoMethodError
        puts "Invalid Token: #{inst}"
        break
      end
    end
  end

  private

  def UPDATE(num)
    self.register = num
  end

  def PUSH
    stack.push(register)
  end

  def ADD
    self.register += stack.pop
  end

  def SUB
    self.register -= stack.pop
  end

  def MULT
    self.register *= stack.pop
  end

  def DIV
    self.register /= stack.pop
  end

  def MOD
    self.register %= stack.pop
  end

  def POP
    self.register = stack.pop
  end

  def PRINT
    puts register
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
