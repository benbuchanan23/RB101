#  Rock, Paper, Scissors, Lizard, Spock

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  first == 'rock' && second == 'scissors' ||
    first == 'rock' && second == 'lizard' ||
    first == 'scissors' && second == 'paper' ||
    first == 'scissors' && second == 'lizard' ||
    first == 'paper' && second == 'rock' ||
    first == 'paper' && second == 'spock' ||
    first == 'lizard' && second == 'spock' ||
    first == 'lizard' && second == 'paper' ||
    first == 'spock' && second == 'scissors' ||
    first == 'spock' && second == 'rock'
end

SCORE = {
  player_score: 0,
  computer_score: 0
}

def score_update_player
  SCORE[:player_score] += 1
end

def score_update_computer
  SCORE[:computer_score] += 1
end

def display_score
  prompt "PLAYER 1: #{SCORE[:player_score]}."
  prompt "COMPUTER: #{SCORE[:computer_score]}."
end

def game_over?
  SCORE[:player_score] == 3 || SCORE[:computer_score] == 3
end

def reset_score
  SCORE[:player_score] = 0
  SCORE[:computer_score] = 0
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You Win!"
    score_update_player
  elsif win?(computer, player)
    prompt "You Lose!"
    score_update_computer
  else
    prompt "It's a Tie!"
  end
end

prompt "Welcome to Rock, Paper, Scissors, Lizard, Spock! Best of 5 Wins!"

loop do
  round = 0
  loop do
    choice = ''
    loop do
      round += 1
      prompt "Round #{round}, choose one: #{VALID_CHOICES.join(', ')}"
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt "Thats not a valid choice!"
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose #{choice}, computer chose #{computer_choice}"

    display_results(choice, computer_choice)

    display_score

    if game_over?
      if SCORE[:computer_score] == 3
        prompt "You have lost the best of 5 Tournament."
      elsif SCORE[:player_score] == 3
        prompt "You have won the best of 5 Tournament! YOU ARE GRAND CHAMPION!"
      end
      break
    end
  end

  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  if answer == 'y'
    reset_score
    display_score
  end
end

prompt "Thanks for playing Rock, Paper, Scissors, Lizard, Spock."
prompt "Please come again."
