# Create and evaluate poker hands
# using Deck and Card classes created previously
require 'pry'

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = []
    build_deck
  end

  def draw
    build_deck if deck == []
    # use own Card#== method and not from Comparable
    # since Array#index uses ==
    #
    # also, remember Array#delete, delete's all matching object
    # and returns the last matching object.
    # comparison done with <=>
    deck.delete_at(deck.index(deck.sample))
  end

  protected

  attr_reader :deck

  def build_deck
    RANKS.each do |rank|
      SUITS.each do |suit|
        deck << Card.new(rank, suit)
      end
    end
  end

end

class Card < Deck
  attr_reader :rank, :suit
  # include Comparable

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    RANKS.index(rank) <=> RANKS.index(other.rank)
  end

  def ==(other)
    rank == other.rank && suit == other.suit
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class PokerHand < Card

  def initialize(deck)
    @hand = []
    5.times { @hand << deck.draw }
  end

  def print
   @hand.each { |card| puts card }
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    royal_rank = RANKS.slice(RANKS.index(10), 5)
    flush? && @hand.sort.map(&:rank) == royal_rank
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    hand_rank = @hand.map(&:rank)
    hand_rank.select { |rank| hand_rank.count(rank) == 4 }.size == 4
  end

  def full_house?
    @hand.map(&:rank).uniq.size == 2
  end

  def flush?
    @hand.map(&:suit).uniq.size == 1
  end

  def straight?
    idx = RANKS.index(@hand.sort[0].rank)
    RANKS.slice(idx, 5) == @hand.sort.map(&:rank)
  end

  def three_of_a_kind?
    hand_rank = @hand.map(&:rank)
    hand_rank.select { |rank| hand_rank.count(rank) == 3 }.size == 3
  end

  def two_pair?
    hand_rank = @hand.map(&:rank)
    hand_rank.select { |rank| hand_rank.count(rank) == 2 }.size == 4
  end

  def pair?
    hand_rank = @hand.map(&:rank)
    hand_rank.select { |rank| hand_rank.count(rank) == 2 }.size == 1 
  end

end

# Monkey patching for testing purposes.
class Array
  alias_method :draw, :pop
end

hand = PokerHand.new(Deck.new)
hand.print

hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

 hand = PokerHand.new([
   Card.new(9, 'Hearts'),
   Card.new(9, 'Clubs'),
   Card.new(5, 'Diamonds'),
   Card.new(8, 'Spades'),
   Card.new(5, 'Hearts')
 ])
 puts hand.evaluate == 'Two pair'
