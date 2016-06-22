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
INITIAL_MARKER = ' '
USER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1,2,3],[4,5,6],[7,8,9]] +
                [[2,5,8],[1,4,7],[3,6,]] +
                [[1,5,9],[3,5,7]]
def initialize_board
  new_board = {}
  (1..9).each { |i| new_board[i] = ' '}
  new_board
end
def is_a_number?(input)
  return true if input.match(/\A\d+\z/)
end
def prompt(message)
  puts "==> #{message}"
end

def display_board(brd)

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

prompt("Welcome to TIC TAC TOE 1.0!")

board = initialize_board

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

def computer_marks_board!(board)
  computer_input = nil
  # loop do
    # computer_input = COMPUTER_OPTIONS.sample
    # if inspect_for_empty_markers(board).include?(computer_input)
    #   board[computer_input] = COMPUTER_MARKER
    #   break
    # end
    computer_input  = inspect_for_empty_markers(board).sample
    board[computer_input] = COMPUTER_MARKER
  # end
end
def board_full(board)
  inspect_for_empty_markers(board).empty?
end
def a_winner?(board)
  !!check_for_winner(board)
end
def check_for_winner(board)
  WINNING_LINES.each do |line|
    if board[line[0]] == USER_MARKER && board[line[1]] == USER_MARKER && board[line[2]] == USER_MARKER
      return 'Player wins'
    elsif board[line[0]] == COMPUTER_MARKER && board[line[1]] == COMPUTER_MARKER && board[line[2]] == COMPUTER_MARKER
      return 'Computer wins'
    end
  end
  nil
end

loop do #main loop
  player_marks_board!(board)
  computer_marks_board!(board)
  display_board(board)
  break if board_full? || a_winner?
  # prompt("continue y/n")
  # answer = gets.chomp
  # break if answer == 'n'
end
