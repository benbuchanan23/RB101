# Loop on Command
# Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer.start_with?('yes')
end

# or 

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer.include?('yes')
end

# or 

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts "Invalid answer, please enter 'yes' to stop looping"
end
