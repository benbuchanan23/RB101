
def multiply(numbers, integer)
  multiplied_numbers = []
  counter = 0 

loop do 
  break if counter == numbers.size

  current_number = numbers[counter]
  current_number *= integer
  multiplied_numbers << current_number
  
  counter +=1
end

multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply(my_numbers, 3)