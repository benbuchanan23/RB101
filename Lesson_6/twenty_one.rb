
# JACK = 10
# QUEEN = 10
# KING = 10
# ACE = 1 || 11

#  deck = [
#   spades = [['spades', 2], ['spades', 3],['spades', 4], ['spades', 5], ['spades', 6], ['spades', 7], ['spades', 8], ['spades', 9], ['spades', 10], ['spades', JACK], ['spades', QUEEN], ['spades', KING], ['spades', ACE]], 
#   diamonds = [['diamonds', 2], ['diamonds', 3], ['diamonds', 4], ['diamonds', 5], ['diamonds', 6], ['diamonds', 7], ['diamonds', 8], ['diamonds', 9], ['diamonds', 10], ['diamonds', JACK], ['diamonds', QUEEN], ['diamonds', KING], ['diamonds', ACE]], 
#   clubs = [['clubs', 2], ['clubs', 3], ['clubs', 4], ['clubs', 5], ['clubs', 6], ['clubs', 7], ['clubs', 8], ['clubs', 9], ['clubs', 10], ['clubs', JACK], ['clubs', QUEEN], ['clubs', KING], ['clubs', ACE]], #   
#   hearts = [['hearts', 2], ['hearts', 3], ['hearts', 4], ['hearts', 5], ['hearts', 6], ['hearts', 7], ['hearts', 8], ['hearts', 9], ['hearts', 10], ['hearts', JACK], ['hearts', QUEEN], ['hearts', KING], ['hearts', ACE]]
# ]

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def prompt(msg)
  puts "==> #{msg}" 
end

def player_deal(player_hand, deck)
  player_hand << deck.sample.sample.pop
end

def dealer_deal(dealer_hand, deck)
  dealer_hand << deck.sample.sample.pop
end

def player_sum(player_hand, deck)
  player_hand.sum
end

def dealer_sum(dealer_hand)
  dealer_hand.sum
end

def detect_result(player_sum, dealer_sum)
  if player_sum > 21 
    :player_busted
  elsif dealer_sum > 21 
    :dealer_busted
  elsif dealer_sum < player_sum 
    :player
  elsif dealer_sum > player_sum
    :dealer
  else
    :tie
  end
end

def display_result(player_hand, dealer_hand)
  result = detect_result(player_sum, dealer_sum)
  case result
  when :player_busted
    prompt "You Busted! Dealer Wins!" 
  when :dealer_busted
    prompt "Dealer Busted! You Win!" 
  when :player
    prompt "You Win!" 
  when :dealer
    prompt "Dealer Wins." 
  when :tie
    prompt "It's a tie!" 
  end
end

def busted?(player_sum)
  total(cards) > 21
end

def play_again?
  prompt "Do you want to play again? (y/n)" 
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

loop do 
  prompt "Welcome to The Bellagio! This is the game of 21." 
  
  deck = initialize_deck
  player_hand = []
  dealer_hand = []
 
    2.times do 
      player_hand << deck.pop
      dealer_hand << deck.pop
    end
     
  prompt "Your Hand: #{player_hand}" 
  prompt "Your Total is #{player_sum(player_hand, deck)}" 
  prompt "Dealer's Hand: #{dealer_hand[0]}" 
  
  loop do 
    player_turn = nil
    loop do 
      prompt "Would you like to hit or stay: "
      player_turn = gets.chomp.downcase 
      break if ['hit', 'stay'].include?(player_turn)
      prompt "Invalid response! Please enter hit or stay." 
    end

    if player_turn == 'hit' 
      player_deal(player_hand, deck)
      prompt "Your Hand: #{player_hand}" 
      prompt "Your Total is #{player_sum(player_hand)}"
    end

    break if player_turn == 'stay' || busted?(player_sum)
  end

  if busted?(player_sum)
    display_result(player_hand, dealer_hand)
    play_again ? next : break
  else 
    prompt "You stayed at #{player_sum}" 
  end

  prompt "Dealer turn..." 
  loop do 
    break if dealer_sum(dealer_hand, deck) >= 17

    prompt "Dealer hits" 
    dealer_deal(dealer_hand, deck)
    prompt "Dealer now has #{dealer_sum}." 
  end

  if busted?(dealer_sum)
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_sum}."
  end

  puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" 
  puts "============================================================" 
  prompt "Dealer has #{dealer_hand}, for a total of #{dealer_sum}." 
  prompt "Player has #{player_hand}, for a total of #{player_sum}." 
  puts "============================================================" 
  puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

  display_result(player_hand, dealer_hand)

  break unless play_again? 
end

prompt "Thank you for playing at the Bellagio!"
