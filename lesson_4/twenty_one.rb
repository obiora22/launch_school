require 'pry'
# Initialize deck
# Deal cards to player and dealer.
# Player turn: hit or stay
#   - repeat Until bust or "stay"
# If player bust, dealer wins.
# Dealer turn: hit or stay
#   -repeat Until total >= 17
# If dealer busts, player wins .
# Compare cards and declare winner.
DEALER_STAY_LIMIT = 17
CARD_LIMIT = 21
WIN_LIMIT = 5
SUITS = %w(Spades Clubs Hearts Diamonds).freeze
CARDS = { 2 => 2, 3 => 3, 4 => 4, 5 => 5,
          6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10,
          "J" => 10, "Q" => 10, "K" => 10, "A" => 11 }.freeze

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Style/ConditionalAssignment
def calculate_hand(hand)
  card_values = hand.map { |card| card[1] }
  sum = 0
  card_values.each do |value|
    if value == 'J' || value == 'Q' || value == 'K' # value.to_i == 0
      sum += 10
    elsif value == 'A'
      sum += 11
    else
      sum += value.to_i
    end
  end
  # correct for aces
  card_values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > CARD_LIMIT
  end
  sum
end
# rubocop:enable Style/ConditionalAssignment

def hit(number_of_hits, hand)
  number_of_hits.times do
    suit = SUITS.shuffle.pop
    card_type = CARDS.keys.shuffle.pop
    card_value = CARDS[card_type]
    hand << [suit, card_value]
  end
  hand
end

def busted?(total)
  total > CARD_LIMIT
end

def initial_hand(hand)
  hit(2, hand)
end

def detect_result(player_hand, dealer_hand)
  player_total = calculate_hand(player_hand)
  dealer_total = calculate_hand(dealer_hand)
  if player_total > CARD_LIMIT
    :player_busted
  elsif dealer_total > CARD_LIMIT
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_hand, dealer_hand)
  result = detect_result(player_hand, dealer_hand)
  case result
  when :player_busted
    "Busted! Dealer wins"
  when :dealer_busted
    "Busted! Player wins"
  when :player
    "Player wins!"
  when :dealer
    "Dealer wins"
  when :tie
    "It's a tie!"
  end
end

def play_again?
  # display_result(player_hand, dealer_hand)
  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp.downcase
  answer == 'y'
end

def first_to_reach_five(player_wins, dealer_wins)
  player_wins == WIN_LIMIT || dealer_wins == WIN_LIMIT
end
player_wins = 0
dealer_wins = 0
loop do # main loop
  prompt "Welcome to TwentyOne"
  # initialize variables
  player_hand = []
  dealer_hand = []
  # deal out initial 2 cards per player
  player_hand = initial_hand([])
  dealer_hand = initial_hand([])
  prompt "Dealer has #{dealer_hand[0]} & ?"
  prompt "Player has #{player_hand[0]} & "\
         "#{player_hand[1]} for a total of #{calculate_hand(player_hand)}"
  # player turn
  loop do
    player_move = nil
    loop do
      prompt("Do you want to (H)it or (S)tay")
      player_move = gets.chomp.downcase
      break if ['h', 's'].include?(player_move)
      prompt "Please choose 'h' or 's'(case insensitive)"
    end
    if player_move == 'h'
      hit(1, player_hand)
      player_total = calculate_hand(player_hand)
      prompt "Player now has #{player_hand}"
      prompt "Player's player_total is #{player_total}"
    end
    break if player_move == 's' || busted?(player_total)
  end
  # player turn
  player_total = calculate_hand(player_hand)
  if busted?(player_total)
    message = display_result(player_hand, dealer_hand)
    prompt message
    if ["Busted! Dealer wins", "Dealer wins"].include? message
      dealer_wins += 1
    elsif ["Busted! Player wins", "Player wins!"].include? message
      player_wins += 1
    end
    prompt "Player: #{player_wins} | Dealer: #{dealer_wins}"
    if first_to_reach_five(player_wins, dealer_wins)
      prompt "First to reach #{WIN_LIMIT} wins! Player: #{player_wins} wins "\
             "| Dealer #{dealer_wins} wins"
      break
    end
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer's turn
  prompt "Dealer's turn ... "
  loop do
    total = calculate_hand(dealer_hand)
    break if busted?(total) || total >= DEALER_STAY_LIMIT
    prompt "Dealer hits"
    hit(1, dealer_hand)
    prompt "Dealer's cards are now #{dealer_hand}"
  end

  if busted?(calculate_hand(dealer_hand))
    prompt "Dealer total is now: #{calculate_hand(dealer_hand)}"
    message = display_result(player_hand, dealer_hand)
    prompt message
    if ["Busted! Dealer wins", "Dealer wins"].include? message
      dealer_wins += 1
    elsif ["Busted! Player wins", "Player wins!"].include? message
      player_wins += 1
    end
    prompt "Player: #{player_wins} | Dealer: #{dealer_wins}"
    if first_to_reach_five(player_wins, dealer_wins)
      prompt "First to reach 5 wins! Player: #{player_wins} wins "\
             "| Dealer: #{dealer_wins} wins"
      break
    end
    play_again? ? next : break
  else
    prompt "Dealer stays at #{calculate_hand(dealer_hand)}"
  end

  # both player and dealer stays - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_hand}"\
         ", for a total of: #{calculate_hand(dealer_hand)}"
  prompt "Player has #{player_hand}"\
         ", for a total of: #{calculate_hand(player_hand)}"
  display_result(player_hand, dealer_hand)
  break unless play_again?
end # loop ends
prompt "Thank you for playing TwentyOne!"
