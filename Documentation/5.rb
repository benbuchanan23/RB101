#  Mandatory Blocks
  # The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:
  # How would you search this Array to find the first element whose value exceeds 8?


  a = [1, 4, 8, 11, 15, 19]

large_numbers = a.map do |num|
  puts num if num >= 8
end


puts large_numbers