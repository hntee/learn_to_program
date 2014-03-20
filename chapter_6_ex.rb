# angry boss
def angry_boss 
  puts 'WHAT DO YOU WANT!!'
  reply = gets.chomp()
  puts 'WHATDAYA MEAN "' + reply.upcase + '"?!? YOU\'RE FIRED!!'
end

# table of contents
def table_of_contents

  col_1 = 13
  col_2 = 20
  col_3 = 4
  col_4 = 3
  line_width = col_1 + col_2 + col_3 + col_4

  head = 'Table of Contents'
  puts(head.center(line_width))
  puts
  
  puts('Chapter 1:'.ljust(col_1) + 'Getting Started'.ljust(col_2) +
       'page'.ljust(col_3) + '1'.rjust(col_4))
  puts('Chapter 2:'.ljust(col_1) + 'Numbers'.ljust(col_2) +
       'page'.ljust(col_3) + '9'.rjust(col_4))
  puts('Chapter 3:'.ljust(col_1) + 'Letters'.ljust(col_2) +
       'page'.ljust(col_3) + '13'.rjust(col_4)) 

end
