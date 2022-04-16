#  Ask the user for 2 numbers
#  Ask the user for an operator to perform
#  Perform the operation on the 2 numbers
#  Output the result

puts "Welcome to the Machine"

puts "What is the first number?" 
number_1 = gets.chomp

puts "What is the second number?" 
number_2 = gets.chomp

puts "What is the operator? 1) add; 2) subtract; 3) multiply; 4) divide" 
operator = gets.chomp

if operator == '1'
  result = number_1.to_i + number_2.to_i 
elsif operator == '2'
  result = number_1.to_i - number_2.to_i
elsif operator == '3' 
  result = number_1.to_i * number_2.to_i 
else 
  result = number_1.to_f / number_2.to_f
end

puts "The result is #{result}" 

