#  Keyword Arguments
  #  What does this code print?

5.step(10, 3) { |value| puts value } 



# 5 = starting point
# .step takes two keyword arguments (also called named arguments), :by and :to
  #  Could also be written 5.step(to: 10, by:3) { |value| puts value}, shortened above
# Code quits after to: value is reached (10)

