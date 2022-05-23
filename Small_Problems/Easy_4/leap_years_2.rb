#  Leap Years (Part 2)
# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year?(integer)
  by_four = integer % 4 == 0 
  by_hundred = integer % 100 == 0 
  by_four_hundred = integer % 400 == 0 

  if by_four == true && by_hundred == false && by_four_hundred == false
    true
  elsif
    by_four == true && by_hundred == true && by_four_hundred == false
    false
  elsif
    by_four == true && by_hundred == true && by_four_hundred == true
    true
  else
    false
  end
end

def julian_leap_year?(integer)
  if integer > 1752
    leap_year?(integer)
  elsif integer == 1752
    true
  elsif integer <1752 && integer % 4 == 0 
    true
  else
    false
  end
end

p julian_leap_year?(2016) == true
p julian_leap_year?(2015) == false
p julian_leap_year?(2100) == false
p julian_leap_year?(2400) == true
p julian_leap_year?(240000) == true
p julian_leap_year?(240001) == false
p julian_leap_year?(2000) == true
p julian_leap_year?(1900) == false
p julian_leap_year?(1752) == true
p julian_leap_year?(1700) == true
p julian_leap_year?(1) == false
p julian_leap_year?(100) == true
p julian_leap_year?(400) == true

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true