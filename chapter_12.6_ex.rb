def roman_to_interger (roman_numeral)
  roman_numeral.upcase!

  return if roman_numeral.match(/[^MDCLXVI]/)
  
  roman = {  'M'=>1000,
             'D'=>500,
             'C'=>100,
             'L'=>50,
             'X'=>10,
             'V'=>5,
             'I'=>1
           }

  res = 0
  prev = nil

  roman_numeral.split('').each do |char|
    if prev 
      # eg. c < m, so result should -= 200
      res -= 2 * roman[prev] if roman[prev] < roman[char]    
    end
    res += roman[char]
    prev = char
  end
  res
end
require 'time'

def birthday_helper (file)

  birthday_info = {}

  File.open(file, "r") do |infile|
    while (line = infile.gets)
        this_line = line.split(',')
        name = this_line[0]
        date = this_line[1].strip + # get rid of spaces on two sides 
               ',' +
               this_line[2][0..-2] # get rid of "\n"

        birthday_info[name] = date
    end
  end

  puts 'Whose birthday do you want to know?'
  name = gets.chomp

  birthday = Time.parse(birthday_info[name])
  month_and_date = birthday_info[name].split(',')[0]
  rightnow = Time.new

  birthday_in_this_year = 
    Time.parse(month_and_date) > Time.new
  
  year = birthday_in_this_year ? rightnow.year : rightnow.year + 1

  next_birthday = 
    Time.parse(month_and_date + ',' + "#{year}")

  years_old = ((next_birthday - birthday) / (365 * 24 * 3600)).to_i

  puts "#{name}'s next birthday will be on #{month_and_date} #{year}."
  puts "And by then #{name} will be #{years_old} years old."
end


