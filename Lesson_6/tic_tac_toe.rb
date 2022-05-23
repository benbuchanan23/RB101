# tic_tac_toe_game

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(board)
  system 'clear'
  puts "[PLAYER 1] = #{PLAYER_MARKER}'s | [COMPUTER] = #{COMPUTER_MARKER}'s "
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_square(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def player_move!(board)
  square = ''
  loop do
    prompt "Choose a square (#{empty_square(board).join(', ')})):"
    square = gets.chomp.to_i
    break if empty_square(board).include?(square)
    prompt "Sorry, not a valid choice!"
  end

  board[square] = PLAYER_MARKER
end

def computer_move!(board)
  square = empty_square(board).sample
  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_square(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def keep_score(player_scorecard, computer_scorecard, board)
  player_score = [] 
  computer_score = []
    if detect_winner(board) == 'Player' 
      player_scorecard += 1 
      player_score << 1
    elsif detect_winner(board) == 'Computer'
      computer_scorecard += 1 
      computer_score << 1
    else
      puts "No change in score" 
    end
  puts "Player: #{player_score.size}; Computer: #{computer_score.size}" 
end

# def score_board(player_scorecard, computer_scorecard)
#   player_score = [] 
#   computer_score = []
#    if player_scorecard == 1
#     player_score << 1
#    elsif computer_scorecard == 1
#     computer_score <<1
#    end
#    p "Player: #{player_score.size}; Computer: #{computer_score.size}" 
# end

def grand_champion(player_scorecard, computer_scorecard)
  if computer_scorecard > 3
    puts "Computer is Grand Champion." 
  elsif player_scorecard > 3
    puts "Player is Grand Champion." 
else 
  puts "a Champion is yet to be determined."
  end
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    # if board[line[0]] == PLAYER_MARKER &&
    #    board[line[1]] == PLAYER_MARKER &&
    #    board[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif board[line[0]] == COMPUTER_MARKER &&
    #       board[line[1]] == COMPUTER_MARKER &&
    #       board[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end


loop do
  board = initialize_board
  player_scorecard = 0
  computer_scorecard = 0 

  loop do
    display_board(board)

    player_move!(board)
    break if someone_won?(board) || board_full?(board)

    computer_move!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  keep_score(player_scorecard, computer_scorecard, board)
  # score_board(player_scorecard, computer_scorecard)
  grand_champion(player_scorecard, computer_scorecard)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing!"
