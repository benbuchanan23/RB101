#  Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


def halvsies(array) 
  array_1_length = (array.size.to_f / 2).ceil
  array_1 = array.slice(0, array_1_length)
  array_2 = array.slice(array_1_length, array.size - array_1_length)
  
[array_1, array_2]
end

# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]