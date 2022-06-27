#  Question 5
#  Programmatically determine if 42 lies between 10 and 100.

range = (10..100)

if range.include?(42) 
  puts "Yes, 42 is included." 
else
  puts "No, 42 is not included."
end

(10..100).cover?(42)       ### Alternate version using .cover?
