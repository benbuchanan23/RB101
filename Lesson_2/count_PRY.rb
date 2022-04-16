require "pry"

counter = 0

loop do 
  counter +=1
  puts counter
  break if counter == 5 
end

