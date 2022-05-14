#  Practice Problem 9     #############################################
#  Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_array = []

letters = arr[0].sort do |a, b|
  b <=> a 
end

numbers = arr[1].sort do |a, b|
  b <=> a 
end

words = arr[2].sort do |a, b|
  b <=> a 
end
 
new_array << letters << numbers << words

p letters
p numbers
p words
p new_array