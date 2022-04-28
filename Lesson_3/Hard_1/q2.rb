#  Question 2
#  What is the result of the last line in the code below?

greetings = { a: 'hi' }

informal_greeting = greetings[:a]

informal_greeting << ' there'

puts informal_greeting      #  => "hi there"
puts greetings              # ==> {:a ==> "hi there"}

#   If instead of modifying the original object, we wanted to only modify informal_greeting but not greetings, there are a couple of options:
#we could initialize informal_greeting with a reference to a new object containing the same value by informal_greeting = greetings[:a].clone.
#we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object.