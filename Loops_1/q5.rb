#  Say Hello        #####################################
##  Modify the code below so "Hello!" is printed 5 times.

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  break if counter == 5
end

# Alternate Version (shorthand)
5.times do 
  puts "Hello!" 
end