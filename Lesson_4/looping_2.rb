#  Looping: Iterating Over Collections

alphabet = 'abcdefghijklmnopqrstuvwxyz' 
counter = 0

loop do 
  puts "#{counter + 1}. #{alphabet[counter]}" 
  counter += 1
  break if counter == alphabet.size
end
