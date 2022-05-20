#  Counting the Number of Characters
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please enter a word or sentence." 
input = gets.chomp
array = input.chars

new_array = array.reject! { |element| element == ' ' }
p new_array.size

puts "There are #{new_array.size} characters in: #{input}." 

# input:
# Please write word or multiple words: walk

# output:
# There are 4 characters in "walk".

# input:
# Please write word or multiple words: walk, don't run

# output:
# There are 13 characters in "walk, don't run".