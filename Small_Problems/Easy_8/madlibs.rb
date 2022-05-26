#  Madlibs
# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# Example
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

puts "Welcome to Mad Libs! Where you create your own adventure!" 
puts "Please enter a noun: " 
noun = gets.chomp

puts "Please enter a verb: " 
verb = gets.chomp

puts "Please enter an adjective: " 
adj = gets.chomp

puts "Please enter an adverb: " 
adv = gets.chomp

sentence = "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!" 
p sentence