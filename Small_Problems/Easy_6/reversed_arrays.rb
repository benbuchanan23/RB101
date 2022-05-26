#  Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.
list = [1, 2, 3, 4]

def reverse!(array)
  count_up = 0
  count_down = -1
  loop do 
    array[count_up], array[count_down] = array[count_down], array[count_up]
    count_up += 1
    count_down -= 1
    break if count_up >= ((array.size / 2).floor)
  end
  p array
end

# Examples:
p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true