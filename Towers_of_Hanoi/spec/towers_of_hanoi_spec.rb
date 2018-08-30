require 'rspec'
require 'towersofhanoi'

describe "TowersOfHanoi" do
  subject(:towersofhanoi) { TowersOfHanoi.new }


#create an initialize for the towers
#should have a towers instance variable and a starting tower

  describe "#initialize" do
    it "towers will be an array" do
      expect(towersofhanoi.towers).to be(Array)
    end

    it "returns the first tower" do
      expect(towersofhanoi.towers[0]).to eq([1,2,3])
    end
  end


#setting up the towersofhanoi so we can pass a move that would valid

  describe "#valid_move?" do
    before(:each) do
      towersofhanoi.towers[0] = [2,3]
      towersofhanoi.towers[1] = [1]
    end

    it "check if the move being made is valid" do
      expect(towersofhanoi.valid_move?(0, 2)).to eq(true)
    end

    it "raises an error if the move is invalid" do
      expect { towersofhanoi.valid_move?(0, 1) }.to raise_error
    end
  end


#move should prompt the user (check if the prompt includes the str)
#move should be able to move from one pile and put it into another
#check if the move is valid? if the next tower has a larger disk
  describe "#move" do
    before(:each) do
      towersofhanoi.towers[0] = [1, 2, 3]
    end

    it "checks if the move was made" do
      expect(towersofhanoi.move).to receive(:valid_move?)
      towersofhanoi.move
    end

    it "moves the piece from one tower to the next" do
    end
  end





#if the first tower is empty
#if the second tower is full with [1,2,3]
#if the third tower is full with [1,2,3]

  describe "#won?" do
    before(:each) do
      towersofhanoi.towers[0] = []
      towersofhanoi.towers[1] = [1,2,3]
    end

    it "checks if tower one is empty" do
      expect(towersofhanoi.won?).to be_empty
    end

    it "returns true if the game is won" do
      winning_moves = [[0,1]]
    end

  end

end
