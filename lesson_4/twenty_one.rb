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

SUITS = %W{Spades Clubs Hearts Diamonds}
CARDS = {2=> 2, 3=> 3, 4=> 4, 5=> 5, 6=> 6, 7=> 7, 8=> 8, 9=> 9, 10=> 10, "J" => 10, "Q" => 10, "K" => 10, "A" => 11}

def prompt(message)
  puts "=> #{message}"
end

def calculate_hand!(hand)
  p "What the FUCK!!!"
  card_values = hand.map { |card| card[1]}
  sum = 0
  # binding.pry
  card_values.each do |value|
    if value == 'J' || value == 'Q' || value == 'K' # value.to_i == 0
      sum += 10
    elsif value == 'A'
      sum += 11
    else
      sum += value.to_i
      # binding.pry
    end
  end

  # correct for aces
  card_values.select { |value| value == 'A'}.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def hit(number_of_hits, hand)
  number_of_hits.times do
    suit = SUITS.sample
    card_type = CARDS.keys.sample
    card_value = CARDS[card_type]
    hand << [suit, card_value]
  end
  return hand
end

def busted?(sum)
   sum > 21
end

def initial_hand(hand)
  hit(2,hand)
end

move = nil

player_hand =  initial_hand([])
dealer_hand = initial_hand([])
loop do
  prompt("Hit or Stay")
  move = gets.chomp.downcase.rstrip
  break if move == 'stay'
  hit(1, player_hand) if move == 'hit'
  p player_hand
  result = calculate_hand!(player_hand)
  p result
  if busted?(result)
    prompt("You busted!")
    answer = nil
    loop do
      prompt("Do you want to play again? (y/n)")
      answer = gets.chomp.downcase
      if answer == 'y' || answer == 'n'
        prompt("Please choose Y/N")
        player_hand =  initial_hand([])
        break
      end
    end
  end
  if answer == 'n'
    prompt("Thank you for playing TwentyOne!")
    break
  end
end # loop ends
