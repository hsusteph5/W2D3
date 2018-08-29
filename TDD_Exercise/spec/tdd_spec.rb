require 'rspec'
require 'tdd'

describe "#my_uniq" do
  it "handles an empty array" do
    expect([].my_uniq).to eq([])
  end

  it "removes duplicates" do
    expect([1, 2, 3, 3, 4, 4].my_uniq).to eq([1, 2, 3, 4])
  end

  it "removes duplicates in the order which they appeared" do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end
end


describe "#two_sum" do
  it "returns an empty array when no pairs sum to zero" do
    expect([1, 0, 2].two_sum).to eq([])
  end

  it "finds pairs that sum to zero" do
    expect([1, -1, 0, 2].two_sum).to eq([[0, 1]])
  end

  it "orders pairs from smaller index to larger index" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end


describe "#my_transpose" do
    symmetric = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
  it "returns a transposed array" do
    expect(symmetric.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end

    unequal_row = [
      [0, 1, 2],
      [3, 4, 5],
    ]
  it "returns a transposed array with unequal rows" do
    expect(unequal_row.my_transpose).to eq([[0, 3], [1, 4], [2, 5]])
  end

    unequal_col = [
      [0, 3],
      [1, 4],
      [2, 5]
    ]
    it "returns a transposed array with unequal columns" do
      expect(unequal_col.my_transpose).to eq([[0, 1, 2], [3, 4, 5]])
    end
end


describe "#stocks" do
  stock = [40, 3, 20, 5]
  it "returns buying as the first index and selling at the second index" do
    expect(stocks(stock)).to eq([[1, 2], [1, 3]])
  end


  stock_price = [12, 17, 12, 15, 11, 11, 18]
  #assume that a profit more than 60% of buying price is worth it!
  it "returns most profitable pair of days to sell the stock" do
    expect(stocks(stock_price)).to eq([[0, 1], [0, 3], [0, 6], [2, 3], [2, 6], [3, 6], [4, 6], [5, 6]])
  end


end
