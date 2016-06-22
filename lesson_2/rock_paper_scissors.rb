require 'pry'

def prompt_user(message)
  puts "=> #{message}"
end

CHOICES = %W{rock paper scissors spock lizard}
$computer_wins = 0
$user_wins = 0

loop do # main loop
  prompt_user("Welcome to Rock Paper Scissors!")
  prompt_user("Please choose r(rock), p(paper), s(scissors), sp(spock) or l(lizard)")
  user_choice = nil
  loop do
    user_input = gets.chomp.strip.downcase
    user_choice = if user_input == 'r'
                  'rock'
                elsif user_input == 'p'
                  'paper'
                elsif user_input == 's'
                  'scissors'
                elsif user_input == 'sp'
                  'spock'
                elsif user_input == 'l'
                  'lizard'
                end
      if user_choice
        break
      else
        prompt_user("Please choose from the provided options.")
      end
   end

  computer_choice = CHOICES.sample


  msg = "Computer's choice: #{computer_choice} | User's choice: #{user_choice}"
  prompt_user(msg)

  def win?(player1, player2)
    (player1 == 'scissors' && player2 == 'paper') ||
      (player1 == 'scissors' && player2 == 'lizard')
      (player1 == 'paper' && player2 == 'rock') ||
      (player1 == 'paper' && player2 == 'spock') ||
      (player1 == 'rock' && player2 == 'scissors') ||
      (player1 == 'rock' && player2 == 'lizard') ||
      (player1 == 'lizard' && player2 == 'spock') ||
      (player1 == 'lizard' && player2 == 'paper') ||
      (player1 == 'spock' && player2 == 'rock') ||
      (player1 == 'spock' && player2 == 'scissors')
  end

  def match_choices(user_choice, computer_choice)
    if win?(user_choice, computer_choice)
      prompt_user("You win!")

      # record user win
      $user_wins += 1

    elsif win?(computer_choice, user_choice)
      prompt_user("You loose!")
      #  record computer win
      $user_wins += 1
    else
      prompt_user("It's a tie!")
    end
  end
  # def match_choices(user_choice, computer_choice)
  #   if user_choice == computer_choice
  #     prompt_user("It's a tie!")
  #   elsif (user_choice == 'scissors' && computer_choice == 'paper') ||
  #         (user_choice == 'paper' && computer_choice == 'rock') ||
  #         (user_choice == 'rock' && computer_choice == 'scissors')
  #     prompt_user('You win!')
  #   elsif (user_choice == 'paper' && computer_choice == 'scissors') ||
  #         (user_choice == 'scissors' && computer_choice == 'rock') ||
  #         (user_choice == 'rock' && computer_choice == 'paper')
  #     prompt_user('You loose!')
  #   end
  # end

  match_choices(user_choice, computer_choice)
  answer = nil
  loop do
    prompt_user("Do you want to continue playing? y/n")
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
  end

 if answer == 'n'
   p "computer wins: #{$computer_wins}"
   p "user_wins: #{$user_wins}"
   prompt_user("Bye!")
   break
 end

end # end of main loop
