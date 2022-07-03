# Even or Odd?
# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 0

loop do
  count += 1
  if count.odd?
    p "#{count} is odd!"
  else
    p "#{count} is even!" 
     
  end
  break if count >= 5
end

# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!
