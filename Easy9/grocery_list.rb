def buy_fruit(list)
  result = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { result << fruit }
  end

  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
