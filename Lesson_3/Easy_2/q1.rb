#  Question 1
#  In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

p ages.include?("spot")
p ages.key?("spot")
p ages.member?("spot")

p ages.include?("Herman")
p ages.key?("Lily")
p ages.member?("Eddie")

# Bonus: What are two other hash methods that would work just as well for this solution?