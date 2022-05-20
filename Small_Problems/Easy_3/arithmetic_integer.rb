#  Arithmetic Integer
# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts "Enter the first number." 
a = gets.chomp.to_f

puts "Enter the second numnber." 
b = gets.chomp.to_f

sum = a + b
difference = a - b
product = a * b 
quotient = a / b
remainder = a % b
power = a ** b

puts "a + b = #{sum}" 
puts "a - b = #{difference}" 
puts "a * b = #{product}" 
puts "a / b = #{quotient}" 
puts "a % b = #{remainder}" 
puts "a ** b = #{power}"


# Example
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103