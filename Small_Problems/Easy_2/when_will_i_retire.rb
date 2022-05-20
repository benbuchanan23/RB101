#  When will I Retire?
#  Build a program that displays when the user will retire and how many years she has to work till retirement.
current_year = Time.now.year

puts "What is your age?" 
age = gets.chomp.to_i 

puts "At what age would you like to retire?" 
age_retirement = gets.chomp.to_i 

year_retirement = current_year + (age_retirement - age) 

puts "It's #{current_year}. You will retire in #{year_retirement}." 

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!