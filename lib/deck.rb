require_relative 'card'

class Deck
  attr_reader :deck_of_cards
  def initialize
    @deck_of_cards = create_cards
  end

  def create_cards
    results = []
    suits = ["♥", "♠︎", "⬥","♣︎"]
    values = (2..14).to_a
    suits.each do |suit|
      values.each do |value|
        results << Card.new(suit, value)
      end
    end
    results
  end

  def shuffle
    @deck_of_cards.shuffle
  end



end
