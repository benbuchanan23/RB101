#  Print While         #############################
##  Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = []
counter = 0

while counter < 5
  random_number = rand(99)
  numbers << random_number
  counter += 1
end

puts numbers

# Example output (your numbers will most likely be different):
# 62
# 96
# 31
# 16
# 36

##  Alternate Version ##
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
