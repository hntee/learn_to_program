# build and sort an array
def build_and_sort_an_array

  # $array = []
  # $i = 0

  # while true
  #   word = gets.chomp()

  #   # empty line or all chars are space -> stop
  #   if ( word.length == 0 || !(word =~ /[^\s]/) )
  #     break
  #   end


  #   $array[$i] = word
  #   $i += 1

  # end

  # puts 'The sorted array is: '
  # puts $array.sort()


  # after correcting
  words = []
  while true
    word = gets.chomp()
    break if word.empty?
    words << word
  end

  puts 'The sorted array is: '
  puts words.sort


end

# table of contents, revisited
def table_of_contents

  # column width
  col_1 = 13
  col_2 = 20
  col_3 = 4
  col_4 = 3

  line_width = col_1 + col_2 + col_3 + col_4

  chapter_num = ['Chapter 1', 'Chapter 2', 'Chapter 3']
  chapter_name = ['Getting Started', 'Numbers', 'Letters']
  page = [1, 9, 13]

  head = 'Table of Contents'
  puts(head.center(line_width))
  puts # output an empty line
  
  (0..chapter_name.length - 1).each do |i| 
    puts((chapter_num[i]+':').ljust(col_1) + chapter_name[i].ljust(col_2) +
       'page'.ljust(col_3) + page[i].to_s.rjust(col_4))
  end
  

end

