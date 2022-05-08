#  List of Digits      ####################################################
#  Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:


def digit_list(integer)
  integer.to_s.chars.map do |char| 
    char.to_i
  end
end



p digit_list(12345) 
p digit_list(7) 
p digit_list(375290) 
p digit_list(444)