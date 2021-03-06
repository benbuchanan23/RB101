#  Sum of Digits
#  Write a method that takes one argument, a positive integer, and returns the sum of its digits.

############################################################
def sum(integer)
  p integer.to_s.chars.map(&:to_i).sum
  end
############################################################

def sum(integer)
  sum = 0
  array = integer.to_s.chars
  
  array.each do |element|
    sum += element.to_i
  end
  sum
end

# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

#  For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).