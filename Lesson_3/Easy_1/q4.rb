#  Question 4
#  The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

#What do the following method calls do (assume we reset numbers to the original array between method calls)?

  numbers = [1, 2, 3, 4, 5]
  numbers.delete_at(1)              # ==> deletes integer at index 1 which is "2"
  p numbers

  numbers = [1, 2, 3, 4, 5]
  numbers.delete(1)                 # ==> deletes the integer "1" 
  p numbers