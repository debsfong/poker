class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value

  end

  def display
    @suit.to_s + @value.to_s
  end

end
