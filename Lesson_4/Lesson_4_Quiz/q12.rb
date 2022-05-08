# Question 12     ##########################


# ['a', 'b', 'c'].map do |item|
#   puts item
# end
# => []

# A
# each
# ['a', 'b', 'c'].each do |item|
#   puts item
# end

# B
# select
['a', 'b', 'c'].select do |item|
  puts item
end

# # C
# # map
# ['a', 'b', 'c'].map do |item|
#   puts item
# end

# D
# None of the above

# B. puts item returns nil which is evaluated as falsey, therefore using select would return an empty array.