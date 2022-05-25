#  Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Problem: 
# Given a STRING of one or more words. Create a method that returns a HASH. The HASH should display keys: represnting length of words and values: representing number of words with that length in string. Symbols count toward word size. 

# Example: 
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Data Structures: 
# - String
# - Method
# - Hash
# - Array

# Algorithm: 
#  - Create array from given string separated by spaces
#  - Sort array by size
#  - Create empty hash
#  - hash{:key} sizes of words in array lowest to highest 
#  - Find sizes of each word/element in array
#  - create new array displaying sizes of each word to get keys
#  - iterate through that array to find number of times each size appears to get values

# def word_sizes(string) 
#   array = string.split(' ')
#   word_sizes = []
#   words_and_sizes = {}

#   array.each do |word|
#     word_sizes.push(word.size)
#   end
  
#   word_sizes. each do |integer|
#     words_and_sizes[integer] =  word_sizes.count(integer) 
#   end

# words_and_sizes.sort.to_h 
# end

# Alternate
def word_sizes(string) 
  hash = Hash.new(0)

  string.split.each do |word|
    hash[word.size] += 1
  end

  hash 
end


# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}