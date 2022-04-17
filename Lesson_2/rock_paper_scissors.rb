#  Rock, Paper, Scissors Game

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "Thats not a valid choice!"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}, computer chose #{computer_choice}"

  if choice == 'rock' && computer_choice == 'scissors'
    choice == 'scissors' && computer_choice == 'paper'
    choice == 'paper' && computer_choice == 'rock'
    prompt "You Win!"
  elsif choice == 'rock' && computer_choice == 'paper'
    choice == 'scissors' && computer_choice == 'rock'
    choice == 'paper' && computer_choice == 'scissors'
    prompt "You Lose!"
  else
    prompt "It's a Tie!"
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Roh, Sham, Bo, please come again."
