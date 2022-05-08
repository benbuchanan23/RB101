#  How Many?    ################################################
#  Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
p "car => #{vehicles.count('car')}" 
p "truck => #{vehicles.count('truck')}" 
p "SUV => #{vehicles.count('SUV')}" 
p "motorcycle => #{vehicles.count('motorcycle')}" 
end

count_occurrences(vehicles)