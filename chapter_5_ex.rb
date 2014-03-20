# full name greeting

puts 'Hello, what\'s your first name?'
first_name = gets.chomp()
puts 'And what\'s your middle name?'
middle_name = gets.chomp()
puts 'And what\'s your lasts name?'
last_name = gets.chomp()
puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

# bigger, better favorite number
puts 'What\'s your favorite number?'
number = Integer(gets) rescue nil

if number
	puts 'I think this one is better: ' + (number + 1).to_s + '.'
else
	puts 'Ah oh, you didn\'t type a valid number.'
end