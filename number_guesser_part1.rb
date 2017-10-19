# number guesser part 1

class GuessingGame

  attr_accessor :guess

  def initialize
    @limit = 7
    @number = (rand * 100).round
    @guess = nil
  end

  def play
    while @limit > 0
      puts ""
      puts "You have #{@limit} guesses remaining."
      print "Enter a number between 1 and 100: "

      loop do
        self.guess = gets.chomp
        if /^\d+$/.match(guess)
          self.guess = guess.to_i
          break if (1..100).to_a.include?(guess)
        end
        print "Invalid guess. Enter a number between 1 and 100: "
      end

      if guess > @number
        puts "Your guess is too high"
        @limit -= 1
      elsif guess < @number
        puts "Your guess is too low"
        @limit -= 1
      elsif guess == @number
        puts "You win!"
        @limit = 0
        break
      end

      if @limit == 0
        puts "You are out of guesses. You lose."
        break
      end
    end
    @limit = 7
    @number = (rand * 100).round
    @guess = nil
  end
end

game = GuessingGame.new
game.play
game.play
