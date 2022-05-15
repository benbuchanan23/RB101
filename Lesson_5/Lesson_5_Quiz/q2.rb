#  Question 2
#  In the following array, a, b, c and d are variables representing objects to be sorted:

[a, b, c, d]
# Given the following return values when we compare these variables:

a <=> b # => -1   # a is less than b
c <=> b # => 0    # b = c 
d <=> c # => 1    # d is more than c 
# In what order would we expect the items in the array to be if we called sort on the array? (Assume that the objects in question are defined in such a way that they have a set, linear order).
#ANSWERS
a < b = c < d  #or
a < c = b < d

# C. a is first in sort order since it returns a -1 when compared with b. d is last in sort order since it returns a 1 when compared with c. b and c are equal in sort order since a 0 is returned when they are compared; given this fact [a, c, b, d] would also be a valid order since when comparison of two elements returns 0, the order of the elements is unpredictable.