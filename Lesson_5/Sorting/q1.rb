# p ['arc', 'bat', 'cape', 'ants', 'cap'].sort

# p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

numbers = [1, 2, 3, 4, 5]

numbers.sort! do |a, b|
  b <=> a 
end

p numbers
