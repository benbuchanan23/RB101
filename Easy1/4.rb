# How Many? 
  # Write a method that counts the number of occurrences of each element in a given array.

  # P: Given array, write a method that counts the number of times each element is found within that array. Each element is case sensitive

  # E: 
#   vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# expected output 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# A: 
#  Create an array with multiple elements, with repetition among elements
#  Create method that counts number of elements that are the same
#  Initiate results hash
#  Iterate through array 
#  If results hash does not include current element pass to results hash with value of 1
#  If results hash does include the current element increment value by 1 
#  Print the results hash

# C: 
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurences(vehicles)
  results = {}
  vehicles.each do |vehicle| 
    results [] += 1
    results.map{ |key, value| "#{key}==>#{value}"}
  end
end

count_occurences(vehicles)
