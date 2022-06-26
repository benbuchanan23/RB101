#  Rock, Paper, Scissors Game

VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  first == 'rock' && second == 'scissors' ||
    first == 'scissors' && second == 'paper' ||
    first == 'paper' && second == 'rock'
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You Win!"
  elsif win?(computer, player)
    prompt "You Lose!"
  else
    prompt "It's a Tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose One: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "Thats not a valid choice!"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}, computer chose #{computer_choice}"

  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Roh, Sham, Bo, please come again."
