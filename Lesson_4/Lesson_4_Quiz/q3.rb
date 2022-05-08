#  Question 3           ###############################################
#  Identify all of the code implementations that correctly meet the following set of requirements.

#  Given an array of integers, for each integer output all integers from 1 to that integer; e.g. if the integer was 5, you would output 1, 2, 3, 4, 5.

numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size

loop do
  number = numbers[-counter]
  for num in 1..number
    puts num
  end

  break if counter == 1
  counter -=1
end