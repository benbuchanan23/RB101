#  Question 18    ######################################################

numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.odd?
                            end

p odd_numbers
p even_numbers


#  A, B, & C. These all implement the requirements correctly.