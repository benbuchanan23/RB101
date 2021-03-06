#  Running Totals
#  Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

def running_total(array) 
  sum = 0 
  array.map do |element|
    sum += element
  end
end

#######################################################################
def running_total(array)
  new_array = []
  sum = 0 
  
  array.each do |element|
    sum += element
    new_array.push(sum)
  end
  p new_array
end
############################################################################


# Examples:
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []