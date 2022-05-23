#  Walk-through: Calculator
# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

puts "Welcome to The Calculator!" 
puts "Please enter the first number: " 
number_1 = gets.chomp.to_f

puts "Please enter the second number: " 
number_2 = gets.chomp.to_f

puts "What operation would you like to perform? (add, subtract, multiply, divide)?" 
operation = gets.chomp

  if operation == 'add' 
    answer = number_1 + number_2
  elsif operation == 'subtract'
    answer = number_1 - number_2
  elsif operation == 'multiply' 
    answer = number_1 * number_2
  else 
    answer = number_1 / number_2
  end

p " #{number_1} #{operation} #{number_2} = #{answer}"