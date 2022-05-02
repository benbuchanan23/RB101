#  Loop on Command       ####################################
#  Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer.start_with?('y')
end


## Alternate Version ##
# loop do
# puts 'Should I stop looping?'
# answer = gets.chomp
# break if answer == 'yes'
# puts 'Incorrect answer. Please answer "yes".'
# end