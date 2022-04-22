#  Rock, Paper, Scissors Game

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

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

  if choice == 'rock' && computer_choice == 'scissors' ||
    choice == 'rock' && computer_choice == 'lizard' ||
    choice == 'scissors' && computer_choice == 'paper' ||
    choice == 'scissors' && computer_choice == 'lizard' ||
    choice == 'paper' && computer_choice == 'rock' ||
    choice == 'paper' && computer_choice == 'spock' ||
    choice == 'lizard' && computer_choice == 'spock' ||
    choice == 'lizard' && computer_choice == 'paper' ||
    choice == 'spock' && computer_choice == 'scissors' ||
    choice == 'spock' && computer_choice == 'rock' 
    prompt "You Win!"
  elsif choice == 'rock' && computer_choice == 'paper' ||
    choice == 'rock' && computer_choice == 'spock' ||
    choice == 'scissors' && computer_choice == 'rock' ||
    choice == 'scissors' && computer_choice == 'spock' ||
    choice == 'paper' && computer_choice == 'scissors' ||
    choice == 'paper' && computer_choice == 'lizard' ||
    choice == 'lizard' && computer_choice == 'scissors' ||
    choice == 'lizard' && computer_choice == 'rock' ||
    choice == 'spock' && computer_choice == 'lizard' ||
    choice == 'spock' && computer_choice == 'paper'
    prompt "You Lose!"
  else
    prompt "It's a Tie!"
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Rock, Paper, Scissors, Lizard, Spock please come again."