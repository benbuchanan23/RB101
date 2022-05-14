#  Practice Problem 5     #############################################
#  Given this nested Hash: figure out the total age of just the male members of the family.

# Problem: 
#  Given hash find total or sum of the ages of all male members of the family

#  Examples: 
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# Data Structures: 
#  Hashes, Array, loop, integers, strings

# Algorithm: 
# - Given hash, separate male from female 
# - Take males and create new array with male ages
# - Take array of male ages and sum for output

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_munsters_ages = []
munsters.each do |key, value|
  if value["gender"] == "male" 
    male_munsters_ages << value["age"]
  end
end
p male_munsters_ages.sum


### Alternate Answer ###
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age 
