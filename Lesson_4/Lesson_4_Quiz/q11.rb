#  Question 11         ################################################

 #  B. This is selection, rather than transformation; stars_2 contains a sub-set of the elements in stars_1.

#  C. This is neither selection nor transformation. Although we call downcase on each element in stars, the way that the method is implemented means that nothing in our stars_1 or stars_2 arrays is selected or transformed. As with each, the return value of a for loop in Ruby (and therefore of our method) is simply the object it was called on, in this case the stars_1 array that we passed to the method.