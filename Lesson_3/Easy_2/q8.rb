#  Question 8  #############################################################
#  Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

#  Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

#  As a bonus, what happens if you use the String#slice method instead? 
##  Will return original string (non-mutating)!

#1:
advice.slice!(advice.index("Few"), advice.index("house")) 
p advice

#2: 
advice.slice!(0, advice.index("house"))
p advice
