# general description
require 'pry'
# 1. DISPLAY 3 x 3 board
# 2. ASK user to mark a square
# 3. COMPUTER marks a square
# 4. DISPLAY updated board state
# 5. IF winner DISPLAY winner
# 6. IF board is full DISPLAY tie
# 7. IF there is neither winner nor full board, go back to #2
# 8. play again ?
# 9. IF yes, go to #1
# 10.IF no, good bye!
COMPUTER_OPTIONS = (1..9).to_a
INITIAL_MARKER = ' '.freeze
USER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def initialize_board
  new_board = {}
  (1..9).each { |i| new_board[i] = ' ' }
  new_board
end

def a_number?(input)
  return true if input =~ /\A\d+\z/
end

def prompt(message)
  puts "==> #{message}"
end
# rubocop:disable Metric/AbcSize

def display_board(brd)
  puts "User's marker: #{USER_MARKER} , Computer's marker: #{COMPUTER_MARKER}s"
  puts "-----------------------"
  puts "       |       |       "
  puts "   #{brd[1]}   |   #{brd[2]}   |   #{brd[3]}   "
  puts "       |       |       "
  puts "-------+-------+-------"
  puts "       |       |       "
  puts "   #{brd[4]}   |   #{brd[5]}   |   #{brd[6]}   "
  puts "       |       |       "
  puts "-----+-----+-----------"
  puts "       |       |       "
  puts "   #{brd[7]}   |   #{brd[8]}   |   #{brd[9]}   "
  puts "       |       |       "
  puts "-----------------------"
end
#  rubocop:enable Metrics/AbcSize

def inspect_for_empty_markers(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def player_marks_board!(board)
  user_input = ''
  loop do
    prompt("Board is numbered(from top-left to bottom-right) 1 - 9")
    prompt("Please choose a marker: #{inspect_for_empty_markers(board)}")
    user_input = gets.chomp.to_i
    if inspect_for_empty_markers(board).include? user_input
      board[user_input.to_i] = USER_MARKER
      break
    else
      prompt("Please choose another marker")
    end
  end
end

def find_vunerable_square(board)
  target_square = nil
  WINNING_LINES.each do |line|
  if board.values_at(*line).count(USER_MARKER) == 2
      line.each do |i|
        next if board[i] == USER_MARKER
        target_square = i
      end
    end
  end
  return target_square
end

def find_winning_square(board)
  target_square = nil
  WINNING_LINES.each do |line|
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
      line.each do |i|
        next if board[i] == COMPUTER_MARKER
        target_square = i
      end
    end
  end
  return target_square
end

def computer_marks_board!(board)
  defend_square = find_vunerable_square(board)
  offense_square = find_winning_square(board)
  binding.pry
  if offense_square
    computer_input = offense_square
  elsif defend_square
    computer_input = defend_square
  else
    computer_input = inspect_for_empty_markers(board).sample
  end
  board[computer_input] = COMPUTER_MARKER
end

def board_full?(board)
  inspect_for_empty_markers(board).empty?
end

def a_winner?(board)
  !!check_for_winner(board)
end

def check_for_winner(board)
  WINNING_LINES.each do |line|
    # if board[line[0]] == USER_MARKER &&
    #    board[line[1]] == USER_MARKER &&
    #    board[line[2]] == USER_MARKER
    #    return 'Player wins'
    # elsif board[line[0]] == COMPUTER_MARKER &&
    #       board[line[1]] == COMPUTER_MARKER &&
    #       board[line[2]] == COMPUTER_MARKER
    #   return 'Computer wins'
    # end
    b_values = board.values_at(line[0], line[1], line[2])
    if b_values.uniq.count == 1 && b_values.uniq[0] == USER_MARKER
      return 'Player wins!'
    elsif b_values.uniq.count == 1 && b_values.uniq[0] == COMPUTER_MARKER
      return 'Computer wins!'
    end
  end
  nil
end

def who_won(board)
  if a_winner?(board)
    winner = check_for_winner(board)

    prompt(winner)
  else
    prompt("It's tie!")
  end
end

def joinor(arr, delimiter: ',', word: "or ")
  str = arr.join(delimiter)
  str.insert(str.length-1, word) if str.length > 1
end
prompt("Welcome to TIC TAC TOE 1.0!")

player_score = 0
computer_score = 0
loop do # main loop
  board = initialize_board
  binding.pry
  loop do
    display_board(board)
    player_marks_board!(board)
    break if board_full?(board) || a_winner?(board)
    computer_marks_board!(board)
    break if board_full?(board) || a_winner?(board)
  end
  display_board(board)
  who_won(board)
  # win_counter(board, computer_score, player_score)
  result = check_for_winner(board)
  if  result == 'Player wins!'
    player_score += 1
  elsif result ==  'Computer wins!'
    computer_score += 1
  end
  p "PLAYER: #{player_score} | COMPUTER: #{computer_score}"
  answer = ''
  loop do
    prompt("Do you want to continue? Y/N")
    answer = gets.chomp.upcase
    answer == 'Y' || answer == 'N' ? break : prompt("Please choose (Y/N)")
  end
  if answer == 'N'
    prompt"Thank you for playing TIC TAC TOE 1.0. Bye!"
    break
  end
end
