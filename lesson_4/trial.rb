# WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
#                 [[2, 5, 8], [1, 4, 7], [3, 6, 9]] +
#                 [[1, 5, 9], [3, 5, 7]]
#
# def initialize_board
#   new_board = {}
#   (1..9).each { |i| new_board[i] = ' ' }
#   new_board
# end
#
# board = initialize_board
# board[1] = "X"
# board[3] = 'X'
# def find_vunerable_square(board)
#   vun = nil
#   WINNING_LINES.each do |line|
#     if board.values_at(*line).count("X") == 2
#       line.each do |i|
#         next if board[i] == 'X'
#         vun = i
#       end
#     end
#   end
#   puts vun
# end
#
# find_vunerable_square(board)
require 'pry'
def calculate_hand(hand)
  card_values = hand.map { |card| card[1]}
  sum = 0
  card_values.each do |value|
    if value == 'J' || value == 'Q' || value == 'K' # value.to_i == 0
      sum += 10
    elsif value == 'A'
      sum += 11
    else
      binding.pry
      sum += value.to_i
    end
  end

  # correct for aces
  card_values.select { |value| value == 'A'}.count.times do
    sum -= 10 if sum > 21
  end
  return sum
end
hand = [["Hearts", 11], ["Diamonds", 10], ["Spades", 3]]
puts calculate_hand(hand)
