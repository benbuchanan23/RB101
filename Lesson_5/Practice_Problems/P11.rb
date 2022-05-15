#  Practice Problem 11       #################################################
#  Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

#Problem: Use the given nested array and produce a new nested array with only integers divisible by 3

#Examples: 
# Given: arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# Returned: arr2 = [[], [3], [9], [15]

#Data Structures: 
# - Arrays (nested), methods
# - Select
# - Reject

#Algorithm: 
# - Use .select method to iterate through given array and select numbers divisible by 3
# - OR use .reject method to iterate through given array and reject numbers not divisible by 3 in order to separate the numbers we want to remain in the second array.
# - Print new array

#Code: 

#.select
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr2 = []
arr.each do |element|
  arr2 << element.select do |integer|
    integer % 3 == 0
  end
end

p arr2


#.reject
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr2 = []
arr.each do |element|
  arr2 << element.reject do |integer|
    integer % 3 != 0
  end
end

p arr2