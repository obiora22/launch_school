# mortgage_calculator.rb
require 'pry'
loan_amount = nil
interest_rate = nil
loan_duration = nil

def valid_number(input)
  integer?(input) && float?(input)
end

def integer?(input)
  %r{\A\d+\z}.match(input)
end

def float?(input)
  %r{\d}.match(input) && %r{\A\d*\.?\d*\z}.match(input)
end

def user_message(message)
  puts "==> #{message}"
end

def user_input_message(message)
  puts "#{message}"
end

  user_message("Welcome to mortgage calculator 1.1")
  user_message("Please enter all requested information:")

  loop do
    user_input_message("Please enter your loan amount")
    loan_amount = gets.chomp
    if valid_number(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      puts "Please input a valid amount"
    end
  end

  loop do
    user_input_message("Please enter you interest rate.")
    user_input_message("Enter a number without the '%' sign.")
    interest_rate = gets.chomp
    if valid_number(interest_rate)
      interest_rate = interest_rate.to_f
      break
    else
      puts "Please input a valid rate"
    end
  end
  loop do
    user_input_message("Please enter your loan duration in years.")
    loan_duration = gets.chomp
    if valid_number(loan_duration)
      loan_duration = loan_duration.to_f
      break
    else
      puts "Please input a valid amount."
    end
  end

  annual_interest_rate = interest_rate / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_in_months = loan_amount / 12

  user_message(annual_interest_rate)
  user_message(monthly_interest_rate)
  user_message(loan_duration_in_months)
