# number guesser part 1 v2

class GuessingGame

  attr_accessor :guess

  def initialize
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
    @limit = 7
    @number = (rand * 100).round
    @guess = nil
  end

  def valid_number(num)
    if /^\d+$/.match(num)
      if (1..100).to_a.include?(num.to_i)
        return num.to_i
      end
    end
    print "Invalid guess. Enter a number between 1 and 100: "
    valid_number(gets.chomp)
  end

  def prompt
    puts ""
    puts "You have #{@limit} guesses remaining."
    print "Enter a number between 1 and 100: "
  end

  def compare(guess, number)
    @limit -= 1
    return "high" if guess > number
    return "low" if guess < number
  end

end

game = GuessingGame.new
game.play
game.play
