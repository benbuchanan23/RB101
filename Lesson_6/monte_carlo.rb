SUITS = %w(Hearts Diamonds Spades Clubs)
VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

def prompt(msg)
  puts "=> #{msg}"
end

def enter
  prompt '...push enter to continue'
  gets.chomp
end

def rules
  puts <<-VEU
                      The rules of the game 21 are as follows...
    The Goal is to get the total amount of your cards as close to 21 as you can without going 
  over (busting). As long as your cards in hand are less than 21 you can (hit), get a new 
  card from the dealer or (stay), keep the cards you have and compare that value to the dealer.
  If your value is closer to 21 than the dealer you win, if the dealer is closer the house wins.
  If both values are equal it is a tie (draw). 

    In order to win the jackpot you must win 5 games of 21 before the dealer. 
  Bonne chance!
  VEU
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'Ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
    :dealer
  when :dealer_busted
    prompt "Dealer busted! You win!"
    :player
  when :player
    prompt "You win!"
    :player
  when :dealer
    prompt "Dealer wins!"
    :dealer
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to continue? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def champion(scorecard)
  if scorecard[:dealer] == 5
    puts "+$+$+$+$+$+$+$+$++$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$"
    puts "+++ The Monte Carlo Wins +++."
    puts "+$+$+$+$+$+$+$+$++$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$"
    "Champion"
  elsif scorecard[:player] == 5
    puts "+$+$+$+$+$+$+$+$++$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$"
    puts "You beat Casino Royale Monte Carlo! Wow!"
    puts "+$+$+$+$+$+$+$+$++$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$+$"
    "Champion"
  else
    puts "...the tournament winner is yet to be determined."
    puts "...first to 5 games wins the Jackpot($$$)."
  end
end

def update_scorecard(scorecard, dealer_cards, player_cards)
  case display_result(dealer_cards, player_cards)
  when :player then scorecard[:player] += 1
  when :dealer then scorecard[:dealer] += 1
  end
end

def display_score(scorecard)
  prompt "Current Score: "
  prompt "PLAYER: #{scorecard[:player]} | HOUSE: #{scorecard[:dealer]} "
end

def reset_scorecard
  { player: 0, dealer: 0 }
end

scorecard = { player: 0, dealer: 0 }

prompt "Welcome to The Casino Royale at Monte Carlo!"
enter
prompt "The game is Vingt-et-un (Twenty-One): ==Computer Edition=="
enter
prompt "Would you like to see the rules of the game?"
prompt "Press 'y' to see rules or any other key to continue without rules."
if gets.chomp.downcase == 'y'
  rules
  enter
end
loop do
  prompt "======================================================"
  prompt "Bien, Let's Play!"
  enter
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
  prompt "Dealer has #{dealer_cards[0][1]} of #{dealer_cards[0][0]} and ?"
  enter
  prompt "You are dealt: #{player_cards[0][1]} of #{player_cards[0][0]} and
  #{player_cards[1][1]} of #{player_cards[1][0]},
  for a total of #{total(player_cards)}."
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end
    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards now include: #{player_cards}"
      prompt "Your total is: #{total(player_cards)}"
      prompt "======================================================"
    end
    break if player_turn == 's' || busted?(player_cards)
  end
  if busted?(player_cards)
    update_scorecard(scorecard, dealer_cards, player_cards)
    display_score(scorecard)
    champion(scorecard)
    play_again? ? next : break
  else
    prompt "You stayed with #{total(player_cards)}"
    enter
  end
  prompt "Dealer's turn..."
  loop do
    break if total(dealer_cards) >= 17
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards now include: #{dealer_cards}"
    enter
  end
  if busted?(dealer_cards)
    prompt "Dealer total is: #{total(dealer_cards)}"
    prompt "==============================================================="
    update_scorecard(scorecard, dealer_cards, player_cards)
    display_score(scorecard)
    prompt "=============================================================="
    champion(scorecard)
    play_again? ? next : break
  else
    prompt "Dealer stays with #{total(dealer_cards)}"
    enter
  end
  puts "====================================================================="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "====================================================================="
  display_result(dealer_cards, player_cards)
  enter
  update_scorecard(scorecard, dealer_cards, player_cards)
  display_score(scorecard)
  if champion(scorecard) == "Champion"
    scorecard = reset_scorecard
  end
  break unless play_again?
end

prompt "Merci, please enjoy your stay at The Casino Royale at Monte Carlo!"
