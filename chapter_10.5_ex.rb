def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negetive.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = [ 'one', 'two', 'three',
                 'four', 'five', 'six',
                 'seven', 'eight', 'nine']

  tens_place = [ 'ten', 'twenty', 'thirty',
                 'forty', 'fifty', 'sixty',
                 'seventy', 'eighty', 'ninty']

  teenagers = [ 'eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']

  left = number

  # billions
  write = left / 1000000000
  left = left - write * 1000000000

  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # millions
  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # thousands
  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # hundreds
  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # tens
  write = left / 10
  left = left - write * 10

  if write > 0
    if write == 1 && left > 0
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  if left > 0
    num_string = num_string + ones_place[left - 1]
  else
    num_string
  end

end


def wedding_number number
  if number < 0
    return 'Please enter a number that isn\'t negetive.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = [ 'one', 'two', 'three',
                 'four', 'five', 'six',
                 'seven', 'eight', 'nine']

  tens_place = [ 'ten', 'twenty', 'thirty',
                 'forty', 'fifty', 'sixty',
                 'seventy', 'eighty', 'ninty']

  teenagers = [ 'eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']

  left = number

  # billions
  write = left / 1000000000
  left = left - write * 1000000000

  if write > 0
    billions = wedding_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  # millions
  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = wedding_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  # thousands
  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = wedding_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  # hundreds
  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = wedding_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  # tens
  write = left / 10
  left = left - write * 10

  if write > 0
    if write == 1 && left > 0
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      num_string = num_string + ' and '
    end
  end

  if left > 0
    num_string = num_string + ones_place[left - 1]
  else
    num_string
  end

end

# 99 bottles of beer
def beer 
  i = 9999
  while i >= 0
    # binding.pry
    if i > 2
      puts english_number(i).capitalize + ' bottles of beer on the wall, ' + english_number(i) + ' bottles of beer.'
      puts 'Take one down and pass it around, ' + english_number(i - 1) + ' bottles of beer on the wall.',''
    elsif i == 2
      puts english_number(i).capitalize + ' bottles of beer on the wall, ' + english_number(i) + ' bottles of beer.'
      puts 'Take one down and pass it around, ' + english_number(i - 1) + ' bottle of beer on the wall.',''
    elsif i == 1
      puts english_number(i).capitalize + ' bottle of beer on the wall, ' + english_number(i) + ' bottle of beer.'
      puts 'Take one down and pass it around, no more beer on the wall.',''
    else
      puts 'No more bottles of beer on the wall, no more bottles of beer. '
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end  

    i -= 1
  end
end

beer 
