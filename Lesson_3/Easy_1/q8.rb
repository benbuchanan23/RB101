#  Question 8
#  Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#  Turn this into an array containing only two elements: Barney's name and Barney's number

flint_array = flintstones.to_a
p flint_array
p flint_array.assoc("Barney")