#  Practice Problem 13    ##################################################
#  Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]


#  The sorted array should look like this:
# [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

#Problem: 
#  Given nested array, return same nested array in order from smallest to largest odd numbers, but containing all original numbers. 

# Example: 
# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# arr2 = [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

#  Data structures: 
#  nested arrays, methods: odd?, even?, sum

# Algorithm: 
# - Iterate through original array to sub-arr
  # - Separate odd integers within sub_arr from even integers
  # - Sum all odd integers within each sub_arr
  # - Sort by smallest to largest sums of each sub_arr
  # - Print new array with new order

# Code: 
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr2 = arr.sort_by do |sub_arr|
  sub_arr.reject do |integer|
    integer.even? 
  end
end
p arr2

### OR ####
arr2 = arr.sort_by do |sub_arr|
  sub_arr.select do |integer|
  integer.odd? 
  end
end
p arr2

