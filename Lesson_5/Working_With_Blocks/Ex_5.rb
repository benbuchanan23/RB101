#  Example 5
#  Next, let's tackle a slightly more complex example.

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
#  What will the return value be in this example? Use what you've learned so far to break it down on your own before checking the solution below.

# => [[2, 4], [6, 8]]
