# Question 16
# Carefully examine the following code example.

pets = ['cat', 'parrot', 'dog', 'fish']
pets.map do |pet|
  pet.size == 3
end
# Based on your observations of the code example, select all statements below which are true.

# A
# The method called on the pets array considers the return value of the block.

# B
# The method called on the pets array will return the original array.

# C
# The method called on the pets array will return a new array.

# D
# The method called on the pets array will return only the items from the array which meet the criteria set in the block.
##############################################################################
# A & C. The return value of the block, which will be true or false, is considered and in fact is used to populate a new array that is returned by the call to map.

# [true, false, true, false]