require 'date'
require 'time'

# determine leap year
now = DateTime.now 
flag = Date.leap?( now.year )
days_in_a_year = flag ? 366 : 365

# hours in a year
puts 'hours in a year: '
puts 24 * days_in_a_year

# minutes in a decade
puts 'minutes in a decade: '
puts 60 * 24 * days_in_a_year * 10

# my age in seconds
puts 'my age in seconds: '
puts (Time.now - Time.parse('1993-10-27')).to_i

# dear author's age
puts 'dear author\'s age:'
puts 1160000000 / 3600 / 24 / days_in_a_year
