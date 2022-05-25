

puts "What is the bill? " 
bill = gets.chomp.to_f

puts "What is the tip percentage?" 
tip_percentage = gets.chomp.to_f

tip = (tip_percentage / 100) * bill
total = tip + bill

puts "The tip is $#{format("%0.2f", tip)}"
puts "The total is $#{format("%0.2f", total)}" 
