#  Example 4     #########################################################
#  Here's another example.

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
#  Can you take this code apart, just like before? What will be output and what will be the value of my_arr? Check the solution below once you have tried this on your own.

#  18
#  7
#  12
#  [[18, 7], [3, 12]]   ## Because .each was used and puts was used on last line of block, the original array is returned.