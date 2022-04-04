# List of Digits
  #  Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

  

def digit_list(i)
   i.digits.reverse
end

# or _____________________________________________________________________________

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end


p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true
p digit_list(10000001)
