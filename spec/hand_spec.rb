require 'rspec'
require 'hand'

describe Hand do
let(:ace) { double("ace", :value => 14, :suit => "♠︎") }
let(:king) { double("king", :value => 13, :suit => "♠︎") }
let(:queen) { double("queen", :value => 12, :suit => "♠︎") }
let(:jack) { double("jack", :value => 11, :suit => "♠︎") }
let(:ten_s) { double("ten_s", :value => 10, :suit => "♠︎") }
let(:ten_h) { double("ten_h", :value => 10, :suit => "♥") }
let(:nine_s) { double("ninr_s", :value => 9, :suit => "♠︎") }
let(:nine_h) { double("nine_h", :value => 9, :suit => "♥") }
let(:nine_c) { double("nine_c", :value => 9, :suit => "♣︎") }
let(:nine_d) { double("nine_d", :value => 9, :suit => "⬥") }

let(:royal_flush) {Hand.new([ace, king, queen, jack, ten_s])}
let(:straight_flush) {Hand.new([king, queen, jack, ten_s, nine_s])}
let(:four_of_a_kind) {Hand.new([nine_s, nine_h, nine_c, nine_d, ace])}
let(:full_house) {Hand.new([nine_s, nine_h, nine_c, ten_s, ten_h])}
let(:three_of_a_kind) {Hand.new([nine_s, nine_h, nine_c, king, ace])}
let(:flush) {Hand.new([ace, queen, jack, ten_s, nine_s])}
let(:straight) {Hand.new([nine_d, ten_h, jack, queen, king])}
let(:two_pair) {Hand.new([ten_s, ten_h, nine_d, nine_s, ace])}
let(:pair) {Hand.new([ten_s, ten_h, ace, king, queen])}
let(:high_card) {Hand.new([ace, king, queen, ten_h, nine_d])}


  describe "#initialize" do
    it "takes an array of five cards" do
      expect(royal_flush.cards).to eq([ace, king, queen, jack, ten_s])
    end
  end

  describe "determine_strength" do
    it "recognizes a royal flush" do
      expect(royal_flush.strength).to eq(:royal_flush)
    end
    it "recognizes a straight flush" do
      expect(straight_flush.strength).to eq(:straight_flush)
    end

    it "recognizes four of a kind" do
      expect(four_of_a_kind.strength).to eq(:four_of_a_kind)
    end
    it "recognizes a full house" do
      expect(full_house.strength).to eq(:full_house)
    end
    it "recognizes a flush" do
      expect(flush.strength).to eq(:flush)
    end
    it "recognizes a straight" do
      expect(straight.strength).to eq(:straight)
    end
    it "recognizes a three of a kind" do
      expect(three_of_a_kind.strength).to eq(:three_of_a_kind)
    end
    it "recognizes a two-pair" do
      expect(two_pair.strength).to eq(:two_pair)
    end
    it "recognizes a pair" do
      expect(pair.strength).to eq(:pair)
    end
    it "recognizes a high card" do
      expect(high_card.strength).to eq(:high_card)
    end
  end


end
