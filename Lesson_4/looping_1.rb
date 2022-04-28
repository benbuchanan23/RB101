
# counter = 0

# loop do 
#   puts counter
#   counter += 1
#     break if counter == 5
# end

counter = 0 

loop do 
  counter +=1
  next if counter.odd?
    puts counter
  break if counter == 20 
end
