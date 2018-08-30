require 'rspec'
require 'deck'

describe "deck" do
  subject(:deck) { Deck.new }
  let(:card) { double('card') }

  describe '#initialize' do
    it "return a deck with all 52 cards" do

    end
  end

  describe '#values' do
    it "return all the possible card values" do
      expect(deck.values).to eq([:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K])
    end
  end

  describe "#suites" do
    it "return all the possible card values" do
      expect(deck.suites).to eq([:spade, :club, :heart, :diamond])
    end
  end

  describe "#populate"
    it "call upon values" do
      expect(deck).to receive(:value).with(no_args)
      deck.populate
    end

    it "call upon suites" do
    end

    it "returned created cards" do
    end
end
