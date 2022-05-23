#  Question 3
#  Given the code below, select all the valid ways to return the value for the hash key :three.

arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]

#  three: 6 (Line 6) is the only place three is used as a hash key and it would return the value "6" 
#  ANSWER
p arr[1][0][:three]
