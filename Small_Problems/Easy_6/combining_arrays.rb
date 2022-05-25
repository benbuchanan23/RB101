#  Combining Arrays
#  Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

def merge(array_1, array_2)
  p array_1 | array_2
end

# def merge(array_1, array_2)
#    array_1.sort
#    array_2.sort

#     array_2.each do |integer|
#       array_1 << integer
#     end
#     array_1.uniq
# end

# Example:
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]