#  After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.



def time_of_day(minutes)
  hour_hand = 24
  minute_hand = 0
  if minutes < 60 && minutes.inspect[0] == '-' 
    hour_hand = 23
    minute_hand = 60 + minutes
    puts "#{hour_hand}:#{minute_hand}" 
  elsif minutes < 60 && minutes.inspect[0] != '-'
    hour_hand = 00
    minute_hand = minutes
    puts "#{hour_hand}:#{minute_hand}"
  elsif minutes == 0
    hour_hand = '00'
    minute_hand = '00' 
    puts "#{hour_hand}:#{minute_hand}"
  end
end

# Examples:
time_of_day(0) #== "00:00"
time_of_day(-3) #== "23:57"
time_of_day(35) #== "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"