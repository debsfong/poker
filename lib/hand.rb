require 'card'

class Hand
  attr_reader :cards, :strength

  def initialize(cards)
    @cards = cards
    @strength = determine_strength
  end

  def determine_strength
    if straight? && flush?
      return :royal_flush if royal_flush?
      return :straight_flush
    end

    return :four_of_a_kind if same_cards.has_value?(4)
    return :full_house if same_cards.values.sort == [2,3]
    return :flush if flush?
    return :straight if straight?
    return :three_of_a_kind if same_cards.has_value?(3)
    return :two_pair if same_cards.values.sort == [1,2,2]
    return :pair if same_cards.has_value?(2)
    :high_card
  end

  def royal_flush?
    @cards.any? { |card| card.value == 14 }
  end

  def flush?
    @cards.all? { |card| card.suit == @cards.first.suit }
  end

  def straight?
    values = []
    @cards.each { |card| values << card.value }
    values.sort!
    last_value = nil
    values.each do |value|
      return false if last_value != nil && value - last_value != 1
      last_value = value
    end
  end


  def same_cards
    matches = Hash.new { |h, k| h[k] = 0}
    cards.each { |card| matches[card.value] += 1 }
    matches
  end

  def determine_higher_hand(hand)

  end

end
