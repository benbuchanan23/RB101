#  Odd Numbers
#  Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.


odds = (1..99).each do |number|
  if number.odd? 
    puts number
  end
end 
