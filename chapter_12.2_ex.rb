require 'time'
# my age in seconds
puts 'my age in seconds: '
puts (Time.now - Time.parse('1993-10-27')).to_i

# when I am one billion seconds old
puts (Time.parse('1993-10-27') + 1000000000)

# happy birthday
puts 'What year were you born in? (Type the number)'
year = gets.chomp
puts 'What month were you born in? (Type the number)'
month = gets.chomp
puts 'What day were you born on? (Type the number)'
day = gets.chomp

rightnow = Time.new
birthday = Time.mktime(year.to_i, month.to_i, day.to_i)

years_old = ((rightnow - birthday) / (365 * 24 * 3600)).to_i

years_old.times {puts 'SPANK!'}