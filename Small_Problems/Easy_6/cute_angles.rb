#  Cute angles
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
DEGREE = "\xC2\xB0"

def dms(float)
  if float >= 361
    initial_1 = (float / 360).floor
    initial_2 = float / 360
    degree = (initial_2 - initial_1) * 360
  elsif float.negative? && float >= -360
    degree = 360 - (float * (-1))
  elsif float.negative? && float <= -360
    initial_1 = (float * -1) / 360
    initial_2 = initial_1.floor
    initial_3 = (initial_1 - initial_2) * 360
    degree = 360 - initial_3
  else degree = float.floor

    minute_1 = ((float - degree) * 60)
    minute_2 = minute_1.floor
   
    second = ((minute_1 - minute_2) * 60)
    second_2 = second.floor
  end
  # minute_symbol = "\'" 
  # second_symbol = "\""

  format(%(#{degree}#{DEGREE}%02d'%02d"), minute_2, second_2)

end

# Examples:
puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) #== %(40°00'00")
puts dms(-40) #== %(320°00'00")
puts dms(-420) #== %(300°00'00")


# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:
