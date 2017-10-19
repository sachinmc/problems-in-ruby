# number guesser part 1 v2

class GuessingGame

  attr_accessor :guess

  def initialize(first_num, last_num)
    @start = first_num
    @end = last_num
    @range = (first_num..last_num).to_a
    reset
  end

  def play
    loop do
      prompt
      self.guess = valid_number(gets.chomp)
      case compare guess, number
      when "high" then puts "Your guess is too high"
      when "low" then puts "Your guess is too low"
      else         puts "You win!"
      end
      break if @limit == 0 || guess == number
    end
    puts "You are out of guesses. You lose." if guess != number
    reset
  end

  private

  attr_reader :number

  def reset
    @limit = Math.log2(@range.size).to_i + 1
    @number = @range.sample
    @guess = nil
  end

  def valid_number(num)
    if /^\d+$/.match(num)
      if @range.include?(num.to_i)
        return num.to_i
      end
    end
    print "Invalid guess. Enter a number between #{@start} and #{@end}: "
    valid_number(gets.chomp)
  end

  def prompt
    puts ""
    puts "You have #{@limit} guesses remaining."
    print "Enter a number between #{@start} and #{@end}: "
  end

  def compare(guess, number)
    @limit -= 1
    return "high" if guess > number
    return "low" if guess < number
  end

end

game = GuessingGame.new(501, 1500)
game.play
game.play
