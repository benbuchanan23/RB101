#  Rock, Paper, Scissors, Lizard, Spock Game "Mortal Kombat Edition"

VALID_CHOICES = %w(rock paper scissors lizard spock)
EASTER_EGG = ["sub-zero"]

def prompt(message)
  puts "=> #{message}"
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

def game_over?(score)
  score == 3
end

def display_results(player, computer)
  if player == 'rock' && computer == 'scissors' ||
     player == 'rock' && computer == 'lizard' ||
     player == 'scissors' && computer == 'paper' ||
     player == 'scissors' && computer == 'lizard' ||
     player == 'paper' && computer == 'rock' ||
     player == 'paper' && computer == 'spock' ||
     player == 'lizard' && computer == 'spock' ||
     player == 'lizard' && computer == 'paper' ||
     player == 'spock' && computer == 'scissors' ||
     player == 'spock' && computer == 'rock' ||
     player == 'sub-zero' && computer == 'rock' ||
     player == 'sub-zero' && computer == 'scissors' ||
     player == 'sub-zero' && computer == 'paper' ||
     player == 'sub-zero' && computer == 'lizard' ||
     player == 'sub-zero' && computer == 'spock'
    prompt "You Win!"
    score_update_player
  elsif player == 'rock' && computer == 'paper' ||
        player == 'rock' && computer == 'spock' ||
        player == 'scissors' && computer == 'rock' ||
        player == 'scissors' && computer == 'spock' ||
        player == 'paper' && computer == 'scissors' ||
        player == 'paper' && computer == 'lizard' ||
        player == 'lizard' && computer == 'scissors' ||
        player == 'lizard' && computer == 'rock' ||
        player == 'spock' && computer == 'lizard' ||
        player == 'spock' && computer == 'paper'
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
      prompt "Round #{round} choose your destiny: #{VALID_CHOICES.join(', ')}"
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice) || EASTER_EGG.include?(choice)
        break
      else
        prompt "Thats not a valid choice!"
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose #{choice}, computer chose #{computer_choice}"

    display_results(choice, computer_choice)

    display_score

    if game_over?(SCORE[:computer_score])
      prompt "You Weak, Pathetic, Fool."
      break
    end

    if game_over?(SCORE[:player_score])
      prompt "YOU WIN!, FLAWLESS VICTORY!"
      break
    end
  end

  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Rock, Paper, Scissors, Lizard, Spock."
prompt "Please come again."
