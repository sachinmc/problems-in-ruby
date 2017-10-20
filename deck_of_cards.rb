# highest and lowest ranking cards from an array of card objects
# <=> in Card class needs to be updated, it is not used here though
# note, Card#== is used.

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = []
    build_deck
  end

  def draw
    build_deck if deck == []
    deck.delete(deck.sample)
  end

  private

  attr_reader :deck

  def build_deck
    RANKS.each do |rank|
      SUITS.each do |suit|
        deck << Card.new(rank, suit)
      end
    end
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
