#  Question 9  
#  Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

p statement.count("t")        # ==> 2

# crazy version
p statement.chars.select { |element| element.include?("t") }.count
