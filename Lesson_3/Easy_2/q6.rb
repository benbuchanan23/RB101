#  Question 6   #######################################################
#  How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones << "Dino"
p flintstones.concat(["Dino"])
p flintstones.push(["Dino"])
