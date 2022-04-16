#  Mandatory Blocks
  # The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:
  # How would you search this Array to find the first element whose value exceeds 8?


  a = [1, 4, 8, 11, 15, 19]


value = a.bsearch { |element| element > 8 }
puts value

# .bsearch 
#  we can devise our call to #bsearch: we use a as the caller, a block of { |element| element > 8 } to find the first element whose value is greater than 8, and we store the return value to a variable named value. The value of value is then printed, which shows that #bsearch found the 11 in a.