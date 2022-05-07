#  Practice Problem 5   ####################################################
#  In the array below, Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name.start_with?("Be")}
