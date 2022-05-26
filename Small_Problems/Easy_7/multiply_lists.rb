#  Multiply Lists
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list(array1, array2) 
combined_array = []
    count = 0 
    until count >= array1.size 
      combined_array << (array1[count] * array2[count])
      count += 1
    end
  p combined_array
end

def multiply_list(array1, array2)
  p array1.zip(array2).map { |arr| arr.inject(:*) }
end

# Examples:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]