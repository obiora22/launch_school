# calculator command line program


require 'yaml'

MESSAGES = YAML.load_file('calculator_keys.yml')
def input_is_a_digit(input)
  input =~ /\A\d+\z/
end

def user_output_message(message)
  puts "=> #{message}"
end

def user_input_message(message)
  puts "#{message}:"
end

def valid_number(input)
  integer?(input) && float?(input)
end

def integer?(input)
  %r{\A\d+\z}.match(input)
end

def float?(input)
  %r{\d}.match(input) && %r{\A\d*\.?\d*\z}.match(input)
end
def confirm_operation(operator)
  case operator
  when  '+'
    user_output_message("Adding numbers...")
    sleep(2)
  when  '-'
    user_output_message("Subtracting numbers...")
    sleep(2)
  when  '*'
    user_output_message('Multiplying numbers...')
    sleep(2)
  when '/'
    user_output_message('Dividing numbers...')
    sleep(2)
  end
end
operand_1 = nil
operand_2 = nil
language_choice = {'1' => 'en','2' => 'es'}
language = nil
user_output_message('1)English 2)Espanol')
loop do
  choice = gets.chomp
 if choice == '1' || choice == '2'
   language = language_choice[choice]
   break
 end
end
user_output_message(MESSAGES["#{language}"]['welcome'])

loop do # Main loop
  loop do
    user_input_message('Please enter a number')
    operand_1 = gets.chomp

    if input_is_a_digit(operand_1)
      break
    else
      user_output_message("Please type in a number...")
    end
  end
  operand_1 = operand_1.to_i

  loop do
    user_input_message('Please enter another number')
    operand_2 = gets.chomp
    break if input_is_a_digit(operand_2)
  end
  operand_2 = operand_2.to_i
  puts 'Enter operator'
  operator = gets.chomp
  case operator
  when '+'
    confirm_operation('+')
    user_output_message(eval('operand_1 + operand_2'))
  when '-'
    confirm_operation('-')
    user_output_message(eval('operand_1 - operand_2'))
  when '*'
    confirm_operation('*')
    user_output_message(eval('operand_1 * operand_2'))
  when '/'
    confirm_operation('/')
    user_output_message(eval('operand_1.to_f / operand_2'))
  else
    user_output_message("Operator not found")
  end
  answer = nil
  loop do
    user_input_message("Do you want to continue? Y/N")
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
  end
  if answer == 'n'
    user_output_message("Thank you for using calculator 1.0")
    break
  end
end
