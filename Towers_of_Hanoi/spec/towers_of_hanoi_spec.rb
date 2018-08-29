require 'rspec'
require 'towers_of_hanoi'

describe "towers_of_hanoi" do
  subject(:game) do
    TowersOfHanoi.new
  end


#create an initialize for the towers
#should have a towers instance variable and a starting tower

  describe "#initialize" do
    it "towers will be an array" do
      expect(game.towers).to be(Array)
    end

    it "returns the first tower" do
      expect(games.towers[0]).to eq([1,2,3])
    end
  end


#move should prompt the user (check if the prompt includes the str)
#move should be able to move from one pile and put it into another
#check if the move is valid? if the next tower has a larger disk
  describe "#move" do
    it "prompt the user to choose a pile to move the disks from" do

    end

    it "prompt user to choose a pile to move disks to" do
    end

    it "check if the move being made is valid" do
    end

    it "move the piece from one tower to the next"
    end
  end

#if the first tower is empty
#if the second tower is full with [1,2,3]
#if the third tower is full with [1,2,3]
  describe "#won?" do
  end
end
