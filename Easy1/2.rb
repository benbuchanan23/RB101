#  Odd
  #  Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

  def odd(integer)
    if integer == 0 
      puts "not even or odd" 
    elsif 
      integer % 2 == 0
      puts "even"
    else
      puts "odd"
    end
  end

  odd(100)