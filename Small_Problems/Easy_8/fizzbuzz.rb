#  fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
 
def fizzbuzz(a, b)
  array = []
  [*(a..b)].each do |integer|
   if integer.to_f % 3 == 0 && integer % 5 == 0 
    array << "fizzbuzz" 
   elsif integer.to_f % 3 == 0 && integer % 5 != 0 
    array << "fizz" 
   elsif integer.to_f % 5 == 0 && integer % 3 != 0 
    array << "buzz" 
   else
    array << integer
   end
  end
  array.join(', ')
end


# Example:
p fizzbuzz(1, 15) #== 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuz