
require 'benchmark/ips'

def stock_picker1(array)
  profit = 0
  buy = 0
  sell = 0

  array.each_with_index do |element, index|
    array.drop(index).each do |future_element|
      if future_element - element > profit
        profit = future_element - element
        buy = element
        sell = future_element
      end
    end

  end

  [buy, sell, profit]

end

def stock_picker2(prices)
  prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
end





prices = (1..100000).to_a.shuffle

Benchmark.ips do |x|
  x.report('stock_picker1') { stock_picker1(prices) }
  x.report('stock_picker2') { stock_picker2(prices) }
  x.compare!
end
