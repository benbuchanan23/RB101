# arr = [1, 2, 3, 4, 5]
# arr[0] += 1
# arr[1] += 1
# arr[2] += 1
# arr[3] += 1
# arr[4] += 1
# arr # => [2, 3, 4, 5, 6]

#  Using Loop Method
arr = [1, 2, 3, 4, 5]
counter = 0 

loop do 
  arr[counter] += 1
  counter += 1 
  break if counter == arr.size 
end

p arr
