#  Sum or Product of Consecutive Integers
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

  puts "Please enter an integer greater than 0: " 
  number = gets.chomp.to_i 
  number_spread = *(1..number)

  if number <= 0 
    puts "Invalid number!" 
  end

  puts "Enter 's' to compute the sum, 'p' to compute the product." 
  sum_or_product = gets.chomp

  if sum_or_product == 's'
    sum = number_spread.sum
    puts "The sum of the integers between 1 and #{number} is #{sum}." 
  else 
    product = number_spread.inject(:*)
    puts "The product of the integers between 1 and #{number} is #{product}." 
  end

# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
