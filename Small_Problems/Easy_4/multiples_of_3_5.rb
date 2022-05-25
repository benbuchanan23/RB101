#  Multiples of 3 and 5
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.
def multisum(integer)
  array = *(1..integer)
  new_array= array.select do |element|
    element % 3 == 0 || element % 5 == 0 
  end
  new_array.sum
end
####################################################################
def multisum(integer)
  new_array = []
  array = *(1..integer)
  array.select do |element|
    if element % 3 == 0
      new_array.push(element) 
    elsif element % 5 == 0
    new_array.push(element) 
    end
  end
  new_array.inject(:+)
end

# Examples
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168