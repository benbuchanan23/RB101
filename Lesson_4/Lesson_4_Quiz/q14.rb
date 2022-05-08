#  Question 14     ##################################

['green', 'blue', 'red'].map do |word|
  puts word
  word.upcase
end
# => ['GREEN', 'BLUE', 'RED']

# C  map returns a new array, with each element determined by the return value of the block, in this case an upper case version of each string from the original array.