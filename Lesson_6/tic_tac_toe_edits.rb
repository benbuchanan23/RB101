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

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(board)
  system 'clear'
  puts "[PLAYER 1] = #{PLAYER_MARKER} | [COMPUTER] = #{COMPUTER_MARKER}"
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

def five_empty?(board)
  if board[5] == INITIAL_MARKER
    board[5] = COMPUTER_MARKER
  end
end

def player_move!(board)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_square(board))}"
    choice = gets.chomp
    square = choice.to_i
    break if empty_square(board).include?(square)
    prompt "Sorry, #{choice} is not a valid choice!"
  end

  board[square] = PLAYER_MARKER
end

def computer_move!(board)
  square = nil

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, board, COMPUTER_MARKER)
      break if square
    end
  end

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, PLAYER_MARKER)
    break if square
  end

  if five_empty?(board)
  elsif !square
    square = empty_square(board).sample
  end

  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_square(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def update_scorecard(scorecard, detect_winner)
  if detect_winner == "Player"
    scorecard[:player] += 1
  elsif detect_winner == "Computer"
    scorecard[:computer] += 1
  else
    puts "PLAYER: #{scorecard[:player]} | COMPUTER: #{scorecard[:computer]} "
    return
  end
  puts "Player: #{scorecard[:player]} | Computer: #{scorecard[:computer]}"
end

def reset_scorecard
  { player: 0, computer: 0 }
end

def grand_champion(scorecard)
  if scorecard[:computer] == 5
    puts "Computer is Grand Champion."
    "Grand Champion"
  elsif scorecard[:player] == 5
    puts "Player is Grand Champion."
    "Grand Champion"
  else
    puts "...a Champion is yet to be determined."
    puts "First player to 5 wins is Grand Champion."
  end
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# AI Defense/Offense
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    risky_square = board.select do |key, value|
      line.include?(key) && value == INITIAL_MARKER
    end
    risky_square.keys.first
  end
end

scorecard = { player: 0, computer: 0 }
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

  update_scorecard(scorecard, detect_winner(board))

  if grand_champion(scorecard) == "Grand Champion"
    scorecard = reset_scorecard
    break
  end

  prompt "Play again? (yes or no)"
  answer = gets.chomp
  unless answer.downcase == "y" || answer.downcase == "yes"
    puts "Are you sure you want to quit the game? (yes or no)"
    final_answer = gets.chomp
    break if final_answer.downcase == "y" || answer.downcase == "yes"
  end
end

prompt "Thank you for playing!"
