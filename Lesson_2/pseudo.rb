#  Practice Pseudo Code

# SUM OF TWO INTEGERS
#  Write a method that returns the sum of 2 integers
  # Allow method to take 2 values 
  # Sum those values using + within method
  # Output sum 
  # Print sum

# def sum(value_1, value_2)
#   value_1 + value_2
# end

# answer = sum(1, 3)
# puts answer

# EVERY OTHER
#  Write a method that takes an array of integers and returns every other value within the array
#  Create an array w/ associated array name
#  Call on even/odd for index numbers to allow for every other number in array
#  Place new values in empty array



def every_other(array)
  array.select.each_with_index { |_, i| i.even?}
end

puts every_other([1,4,7,2,5])