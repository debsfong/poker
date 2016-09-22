require 'game'
require 'rspec'

describe Game do
  describe "initialize" do
    it "creates a deck of 52 cards"
    it "it creates 4 players"
    it "takes ante value"
  end

  describe "play" do

    describe "deal" do
      it "passes out 5 cards to each player"
    end

    describe "remove_player" do
      it "removes player if their pot is empty"
    end

    describe "switch_player" do
      it "switches to the next player"
    end

    describe "round_winner" do
      it "compares values of the hands"
      it "returns the round winner"
    end

    describe "distribute_winnings" do
      it "distributes money to the round winner"
    end

    describe "place_bets" do

    end

    describe "start_round" do
      it "pushes the ante to the pot"
    end

    describe "end_round" do

    end

    describe "game_over" do
      it "returns the last remaining player"
    end

  end


end
