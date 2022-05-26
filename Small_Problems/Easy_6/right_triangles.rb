#  Right Triangles
#  Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(integer)
  count = 1
  puts "#{' ' * (integer)}"
  loop do 
    puts "#{' ' * (integer - count)}#{'*' * count}" 
    count += 1
    break if count > integer
  end
end
# puts "#{' ' * (integer - 2)}**" 
# puts "#{' ' * (integer - 3)}***" 
# puts "#{' ' * (integer - 4)}****"
# puts "#{' ' * (integer - 5)}*****"
# end


# Examples:
triangle(100)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********