SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  SUITS.product(VALUES).shuffle
end

p deck = initialize_deck

player_cards = []

player_cards << deck.pop[1] 
p player_cards