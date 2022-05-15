#  Question 1
#  Given the code below:

# arr = ['340', '15', '1', '3400']

# arr.sort # => ['1', '15', '340', '3400']
#  Which of the following statements most accurately describes why that particular return value is produced?

arr = ['4', '9', '1', '3']
p arr.sort

# The Array#sort method sorts items by using comparison. The comparison is carried out using the appropriate comparison method for the item type, in this case the String#<=> method. The strings are compared character by character according to ASCII position. Longer strings are considered greater if the strings are equal when compared up to the shortest length.