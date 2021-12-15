def fibonacci(nth)
  first = 1
  second = 1
  fibonacci = 0

  return 1 if nth <= 2

  3.upto(nth) do
    fibonacci = first + second

    first = second
    second = fibonacci
  end

  fibonacci
end

# ______LS Solution_______

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last
# end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
