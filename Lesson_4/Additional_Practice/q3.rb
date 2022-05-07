#  Practice Problem 3   ###############################
##  In the age hash: remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# PART 1
young_crowd = ages.reject do |key, value|
  value > 99 
end

# PART 2
young_crowd = ages.select! do |key, value| 
  value < 100
end

p young_crowd