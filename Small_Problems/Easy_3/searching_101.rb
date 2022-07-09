###   Searching 101  ###
#  Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

lotto = []
puts "Enter the 1st number on your lottery card." 
first = gets.chomp.to_i
lotto << first

puts "Enter the 2nd number on your lottery card." 
second = gets.chomp.to_i
lotto << second

puts "Enter the 3rd number on your lottery card." 
third = gets.chomp.to_i
lotto << third

puts "Enter the 4th number on your lottery card." 
fourth = gets.chomp.to_i
lotto << fourth

puts "Enter the 5th number on your lottery card." 
fifth = gets.chomp.to_i
lotto << fifth

puts "Enter the Lucky Number." 
lucky = gets.chomp.to_i

if lotto.include?(lucky)
  puts "The number #{lucky} appears in #{lotto}." 
else 
  puts "The number #{lucky} does not appear in #{lotto}." 
end
