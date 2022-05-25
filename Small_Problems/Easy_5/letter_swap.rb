#  Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces


def swap(string)
  array = string.split(' ') 
  new_array = []
  array.map do |element|
    element[0], element[-1] = element[-1], element[0]
    new_array.push(element)
  end
  new_array.join(' ')
end

# def swap(string) 
#   array = string.split(' ')
#   array.each do |element|
#     element[0], element[-1] = element[-1], element[0]
#   end
#   array
# end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'