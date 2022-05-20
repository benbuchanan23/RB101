#  How old is Teddy?
#  Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

age_range = (20..200)
age = age_range.to_a.sample

puts "Teddy is #{age} years old!" 

# Example Output
# Teddy is 69 years old!