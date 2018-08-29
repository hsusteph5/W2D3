class TowersOfHanoi
  attr_reader :towers

  def initialize
    @towers = Array.new(3) { Array.new }
    populate
  end

  def populate
    self.towers[0] = [1, 2, 3]
  end

  def valid_move?(prev_tow, next_tow)
    if self.towers[prev_tow].empty?
      raise "Your previous tower is empty!"
    elsif self.towers[next_tow].empty?
      return true
    elsif self.towers[prev_tow][0] > self.towers[next_tow][0]
      raise "You cannot make that move!"
    else
      return true
    end
  end

  def move
    until won?
      
    end
  end

  def won?
  end
end
