require 'rspec'
require 'card'

describe Card do
  let(:king) {Card.new("♥", 13)}

  describe "#initialize" do
    it "creates a card with a value and suit" do
      expect(king.value).to eq(13)
      expect(king.suit).to eq("♥")
    end
  end

  describe "display" do
    it "displays the suit and value as a string" do
      expect(king.display).to eq("♥13")
    end
  end

end
