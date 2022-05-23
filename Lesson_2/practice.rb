
puts "please enter an integer greater than 0" 
number = gets.chomp.to_f 

puts "would you like the sum or product of all integers b/w 1 and this number? (s or p)" 
operand = gets.chomp

if operand == 's' 
  sum = *(1..number).sum.to_s
  puts "The sum of the integers = #{sum}!" 
else
  product = *(1..number).inject(:*).to_s
  puts "The product of the integers = #{product}!" 
end








# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

