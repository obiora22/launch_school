# greeter.rb

puts "Please state your name."

name = gets.chomp

if name =~ /!\z/
  name.chomp!('!')
  puts "HELLO #{name}! I HEARD YOU THE FIRST TIME!"
else
  puts "Hello #{name}"
end
