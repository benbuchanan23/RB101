#  Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(string)
array1 = string.chars
array2 = string.chars
array1.zip(array2).flatten.join
end



# Examples:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''