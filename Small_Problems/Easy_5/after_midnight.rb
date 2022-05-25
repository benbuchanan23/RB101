#  After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.


# 1 day = 1440 min
# 1 day = 24 hours
# 1 hour = 60 min 

def time_of_day(integer) 
  hours = 0
  minutes = 0 
   if integer == 0 || integer % 1440 == 0
    format('%02d:%02d', hours, minutes)
   elsif integer.to_f >1440
    minutes = integer.to_f % 1440 
      if minutes.to_f % 60 == 0 
        minutes = 0
      end
    hours = (minutes % 60).floor
    format('%02d:%02d', hours, minutes)
   else
    hours = ((integer.to_f % 1440) * 24).floor
    minutes = (((integer.to_f % 1440) * 24) - (((integer % 1440) * 24).floor)) * 60
    format('%02d:%02d', hours, minutes)
   end
  end


# Examples:
p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"


# def time_of_day(minutes)
#   minute_hand = 0 
#   hour_hand = 0 
#   if minutes == 0 || minutes % 1440 == 0 
#     puts "00:00" 
#   elsif minutes > 1440 && minutes.inspect[0] != '-'
#     day = minutes % 1440
#     hour = days * 24
#     hours += hour.round
#     puts "#{hour_hand}:#{minute_hand}" 
#   elsif minutes > 1440 && minutes.inspect[0] == '-'
    

    



# def time_of_day(minutes)
#   time = 00
#   hour_hand = 24
#   minute_hand = 0
#   if minutes < 60 && minutes.inspect[0] == '-' 
#     hour_hand = 23
#     minute_hand = 60 + minutes
#     puts "#{hour_hand}:#{minute_hand}" 
#   elsif minutes < 60 && minutes.inspect[0] != '-'
#     hour_hand = %d %
#     minute_hand = minutes
#     puts "#{hour_hand}:#{minute_hand}"
#   elsif minutes == 0
#     hour_hand = '00'
#     minute_hand = '00' 
#     puts "#{hour_hand}:#{minute_hand}"
#   end
# end

# Examples:
time_of_day(0) #== "00:00"
time_of_day(-3) #== "23:57"
time_of_day(35) #== "00:35"
# time_of_day(-1437) == "00:03"
time_of_day(3000) #== "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"