VALUES = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
SUITES = [:spade, :club, :heart, :diamond]

class Deck
  def initialize
    populate
  end

  def values
    VALUES
  end

  def suites
    SUITES
  end

  def populate
    4.times do |time|
      self.values
    end
  end
end
