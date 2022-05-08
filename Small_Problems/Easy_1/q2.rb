# Odd
# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Examples:
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true
#Keep in mind that you're not allowed to use #odd? or #even? in your solution.

def odd_number(integer)
  if integer % 2 != 0
    puts "true" 
  else 
    puts "false" 
  end
end

odd_number(2)
odd_number(5)
odd_number(-17)
odd_number(-8)
odd_number(0)
