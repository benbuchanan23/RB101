#  Greeting              ########################################
##  Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

counter = 1

loop do 
  puts greeting
  counter += 1
  break if counter > 2
end
