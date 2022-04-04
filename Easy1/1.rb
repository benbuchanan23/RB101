#  Repeat Yourself
  # Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

  # def repeat(string, integer) 
  #   string * integer

  # end

  # puts repeat("Hello ", 3)

  def repeat(string, integer)
  integer.times do                             #.times
    puts string
  end
end

repeat("Hello", 3)


