class Array
  # Array has a uniq method that removes duplicates from an array.
  # It returns the unique elements in the order in which they first
  #  appeared:
  def my_uniq
    arr = []
    (0..self.length - 1).each do |i|
      arr << self[i] unless arr.include?(self[i])
    end
    arr
  end

  def two_sum
    arr = []
    (0..self.length - 2).each do |i|
      (i + 1..self.length - 1).each do |j|
        arr << [i, j] if self[i] + self[j] == 0
      end
    end
    arr
  end

  def my_transpose
    arr = []
    (0..self[0].length - 1).each do |c|
      temp_arr = []
      (0..self.length - 1).each do |r|
        temp_arr <<  self[r][c]
      end
      arr << temp_arr
      temp_arr = []
    end
    arr
  end
end

#takes in an array of stocks and picks the most profitable day
#assume the array starts at day 0
#assume that a profit more than or equal to 20% of buying price is worth it!
def stocks(array)
  arr = []
  (0...array.length - 1).each do |buy_d|
    (buy_d + 1..array.length - 1).each do |sell_d|
      buy_price = array[buy_d]
      sell_price = array[sell_d]
      if ((sell_price.to_f - buy_price.to_f) / buy_price.to_f) >= 0.2
        arr << [buy_d, sell_d]
      end
    end
  end
  arr
end
