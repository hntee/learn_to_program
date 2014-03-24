# require 'pry'

# 99 Bottles of Beer on the Wall
def beer
  i = 99
  while i >= 0
    # binding.pry
    if i > 2
      puts i.to_s + ' bottles of beer on the wall, ' + i.to_s + ' bottles of beer.'
      puts 'Take one down and pass it around, ' + (i - 1).to_s + ' bottles of beer on the wall.',''
    elsif i == 2
      puts i.to_s + ' bottles of beer on the wall, ' + i.to_s + ' bottles of beer.'
      puts 'Take one down and pass it around, ' + (i - 1).to_s + ' bottle of beer on the wall.',''
    elsif i == 1
      puts i.to_s + ' bottle of beer on the wall, ' + i.to_s + ' bottle of beer.'
      puts 'Take one down and pass it around, no more beer on the wall.',''
    else
      puts 'No more bottles of beer on the wall, no more bottles of beer. '
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end  

    i -= 1
  end
end

# Deaf grandma
def grandma
  while true
    say = gets.chomp()
    if say == 'BYE'
      return
    elsif say == say.upcase
      puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  end
end

# Deaf grandma extended
def grandma_ex
  while true
    say = gets.chomp()
    if say.scan(/BYE/).length == 3 # three times in a row
      return
    elsif say == say.upcase
      puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  end
end



# display leap year between two years
def is_leap_year year

  (year % 100 == 0 && year % 400 == 0) || 
  (year % 100 != 0 && year % 4 == 0)

end

def display_leap_year
  puts 'Type in a starting year.'
  starting_year = gets.chomp().to_i
  puts 'Type in an ending year.'
  ending_year = gets.chomp().to_i

  (starting_year..ending_year).each do |i|
    if is_leap_year i
      puts i
    end
  end

end

beer