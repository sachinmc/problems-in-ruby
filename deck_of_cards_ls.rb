# only the Deck class is LS solution, the Card class is not

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @deck.empty?
    @deck.pop
  end

  private

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @deck.shuffle!
  end

end


class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

#  def <=>(other)
#    RANKS[rank] <=> RANKS[other.rank]
#  end

  def ==(other)
    rank == other.rank && suit == other.suit
  end

  def to_s
    "#{rank} of #{suit}"
  end
end


puts deck = Deck.new
puts drawn = []
puts 52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts'} == 13

puts drawn2 = []
puts 52.times { drawn2 << deck.draw }
puts drawn != drawn2
