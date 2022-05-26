#  Fibonacci Number Location By Length
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

#P: 
# Given an integer representing the number of digits, within an integer. Create a method that calculates how many Fibonacci iterations it would take to first reach a number with that many given digits. 

#E: 
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144

#D: 
#- Integers (what is given as argument) and what will be placed in array
#- Arrays for storage of fibonacci numbers 

#A: 
# Create starting array with [1, 1] 
# Add to starting array using inject(:+)


#CODE: 
def find_fibonacci_index_by_length(number)
  array = [1, 1]
  current_index = 1
  loop do 
    current_index +=1 
    current_index_sum = array[-1] + array[-2]
    array << current_index_sum
    break if current_index_sum.to_s.length >= (number)
  end
  array.size
end 

# Examples:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
# You may assume that the argument is always greater than or equal to 2.