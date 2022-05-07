#  Practice Problem 4    #########################################################
##  Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

young_to_old = ages.sort_by {|_, value| value}.first

puts young_to_old

## or 

p ages.values.min