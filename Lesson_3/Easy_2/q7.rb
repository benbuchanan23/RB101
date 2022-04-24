#  Question 7
#  In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

#  We could have used either Array#concat or Array#push to add Dino to the family.
#  How can we add multiple items to our array? (Dino and Hoppy)

#1: 
p flintstones.concat(["Dino", "Hoppy"])

#2: 
p flintstones.push(["Dino", "Hoppy"])
p flintstones.flatten! 

#3: 
p flintstones << "Dino" 
p flintstones << "Hoppy"
