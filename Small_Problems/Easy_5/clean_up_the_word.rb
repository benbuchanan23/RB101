#  Clean up the words
# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Problem: 
#  Given a string consisting of all lower-case letters and non-letter characters, return a string with only letters. Wherever there were non-letter characters put 1 space. 

# Examples:
# cleanup("---what's my +*& line?") == ' what s my line '

# Data Structures: 
# - strings, arrays, methods

# Algorithm: 
# - convert string to array of characters
# - convert each element in array that isn't a letter to a space
# - convert every sequence of >1 space to 1 space
# - join array back to string

# Code: 
def cleanup(string) 
  array = string.chars
  new_array = array.map do |element|
    if ('a'..'z').include?(element)
      element
    else
      element.replace(' ')
    end
  end
  results = []
  new_array.each_with_index do |element, index|
    if element == ' ' && new_array[index + 1] == ' ' 
      next
    else
      results << element
    end
  end
  p results.join
end




# Examples:
p cleanup("---what's my +*& line?") == ' what s my line '