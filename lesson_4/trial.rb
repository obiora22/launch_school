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

# def prime?(num)
#    prime = true
#   (2..num-1).each do |i|
#     if  num % i == 0
#       prime = false
#     end
#   end
#   prime
# end
require 'prime'
(1..15).each do |n|
  puts n if n.prime?
end

a = [1,2,3,4,5,6,7,8]

a.select { |n| n < 6}

a.each do |n|
  put n
end
