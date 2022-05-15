#  Practice Problem 14      ################################
#  Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

#  The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Problem: 
# Given hash, return array of fruits and vegetables. Array should contain the corors of the fruits and the sizes of the vegetables. The sizes of vegetables should be all caps and the colors should be capitalized first letter. 

# Example: 
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Data Structures: 
# Hash, Array, strings

# Algorithm: 
# Make new Array
# Iterate through original hash to find fruits 
# Iterate through original hash to find vegetables
# If fruit is identified append colors of the fruit to empty array 
# Use .capitalize to the fruit colors
# If vegetables is identified append 'size' to the empty array 
# Use .uppercase to the size of the vegetables
# Print new array

# Code: 
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
fruits_and_veggies = []
hsh.each do |produce, description|
   if description[:type] == "fruit" 
    fruits_and_veggies << description[:colors].map {|color| color.capitalize}
   else 
    fruits_and_veggies << description[:size].upcase
   end
   p fruits_and_veggies
end

