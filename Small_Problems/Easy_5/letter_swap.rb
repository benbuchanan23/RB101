#  Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# def swap(string) 
#   array = string.split(' ')
#   array.each do |element|
#     first_letter = element[0]
#     last_letter = element[-1]

#     element[0] = last_letter
#     element[-1] = first_letter
#   end
#   p array
# end

def swap(string) 
  array = string.split(' ')
  array.each do |element|
    element[0], element[-1] = element[-1], element[0]
  end
  p array
end



# Examples:
swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'