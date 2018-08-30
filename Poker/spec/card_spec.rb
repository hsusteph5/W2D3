require 'rspec'
require 'card'

describe "card" do
  subject(:card) { Card.new(8, :spade)}

  describe "initialize" do
    it "returns a value" do
      expect(card.value).to be(8)
    end

    it "returns a symbol" do
      expect(card.symbol).to eq(:spade)
    end
  end

end
