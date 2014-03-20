# ask question
def ask question

  while true

    puts question
    reply = gets.chomp().downcase

    # reply must be yes or no
    if (reply != 'yes' && reply != 'no')
      puts 'Please answer "yes" or "no".'
    else
      return reply == 'yes'
    end

  end
end

# old-school Roman numerals
def roman_numeral num
  m = num / 1000
  num -= 1000 * m
  d = num / 500
  num -= 500 * d
  c = num / 100
  num -= 100 * c
  l = num / 50
  num -= 50 * l
  x = num / 10
  num -= 10 * x
  v = num / 5
  num -= 5 * v
  i = num / 1

  puts ('M' * m + 'D' * d + 'C' * c +
        'L' * l + 'X' * x + 'V' * v + 'I' * i)

end


# modern roman numeral
def modern_roman_numeral num
  
  m = num / 1000
  num -= 1000 * m
  cm = num / 900
  num -= 900 * cm
  d = num / 500
  num -= 500 * d
  c = num / 100
  num -= 100 * c
  xc = num / 90
  num -= 90 * xc
  l = num / 50
  num -= 50 * l
  xl = num / 40
  num -= 40 * xl
  x = num / 10
  num -= 10 * x
  ix = num / 9
  num -= 9 * ix
  v = num / 5
  num -= 5 * v
  iv = num / 4
  num -= 4 * iv
  i = num / 1

  puts ('M' * m + 'CM' * cm + 'D' * d + 'C' * c + 'XC' * xc + 'L' * l + 
        'XL' * xl + 'X' * x + 'IX' * ix + 'V' * v + 'IV' * iv + 'I' * i)
  
end

