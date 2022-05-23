#  Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.
list = [1, 2, 3, 4]

def reverse!(array) 
  first = 0 
  last = -1
  
while first < (array.size / 2)
  array[first], array[last] = array[last], array[first]
  first += 1
  last -= 1
  end

  array
end

# Examples:
p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true