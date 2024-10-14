
def stock_picker(array)
  profit = 0
  buy = 0
  sell = 0

  array.each_with_index do |element, index|
    array.drop(index).each do |future_element|
      if future_element - element > profit
        profit = future_element - element
        buy = element
        sell = future_element
        puts "buy at #{buy} and sell at #{sell} with a profit of #{profit}"

      end
    end
  end

  puts "\nFinal transaction is buy at #{buy} and sell at #{sell} with a profit of #{profit}"
end


array = [17,3,6,9,15,8,6,1,10]
stock_picker(array)


