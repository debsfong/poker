require 'rspec'
require 'deck'

describe Deck do
  let(:stack) { Deck.new }
  let(:queen) { double("queen", :value => 12, :suit => "♥") }

  describe "initialize" do
    it "creates a deck of 52 cards" do
      expect(stack.deck_of_cards.length).to eq(52)
    end
    it "has Queen of Hearts" do
      expect(stack.deck_of_cards).to include(queen.value)
    end
  end

  describe "shuffle" do
    it "doesn't equal the initial deck" do
      expect(stack.shuffle).to_not eq(stack)
    end
  end
end
