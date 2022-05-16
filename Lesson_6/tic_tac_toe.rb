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

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing!"
