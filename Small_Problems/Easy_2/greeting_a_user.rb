#  Greeting a user
#  Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

puts "What is your name? " 
user_name = gets.chomp

if user_name.include?("!")
  user_name = user_name.chop

  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?" 
else 
  puts "Hello #{user_name}." 
end

# Examples
# What is your name? Bob
# Hello Bob.
# Copy Code
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?