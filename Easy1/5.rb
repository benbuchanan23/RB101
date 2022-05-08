#  Reverse It (Part 1)    #########################################
#  
#  Problem: 
    # Write a method that takes one argument
    # Argument is a string
    # Method returns a new string with WORDS in REVERSE order not letters

#  Examples: 

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == ''

#  Data: 
#  Strings, Arrays

#  Algorithm: 
#  - write a method with a one argument string with one or more words or an empty string
#  - Divide string sentence into individual words, separated by spaces, within an array
#  - Reverse array
#  - Rejoin the reversed array into a string w/ spaces

#  Code: 

def reverse_sentence(sentence)
  sentence.split(' ').reverse.join(' ')
end



p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'
p reverse_sentence('') == ''
p reverse_sentence('    ') == ''