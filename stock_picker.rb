def stock_picker(prices)
  sell_range = prices.slice(1, prices.length - 1) # can't sell on the first day
  sell_index = prices.index(sell_range.max)
  buy_range = prices.slice(0...sell_index)
  buy_index = prices.index(buy_range.min)
  [buy_index, sell_index]
end

p stock_picker([1, 3, 5, 4, 2, 1]) # => [0, 2]
p stock_picker([17,3,6,9,15,8,6,2,1]) # => [1, 4]