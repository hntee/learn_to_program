# Even better profiling
def profile block_description, &block
  return
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

# grandfather clock
def grandfather_clock &block
  require 'time'

  # hour = Time.new.hour
  #clock_count = hour % 12 == 0 ? 12 : hour % 12

  # this is more elegant
  clock_count = (Time.new.hour + 11) % 12 + 1
  clock_count.times {block.call}
end

# program logger
def log string_description, &block
  puts "Beginning \"#{string_description}\"..."
  ret_val = block.call
  puts "...\"#{string_description}\" finished, returning \n#{ret_val}"
  
end

# log 'outer block' do
#   log 'some little block' do
#     5
#   end
#   log 'yet annother block' do
#     'The key is 42'
#   end
#   false
# end

# better program logger
$nesting_depth = 0

def better_log string_description, &block
  prefix = ' ' * $nesting_depth * 2
  
  puts "#{prefix}" + 
       "Beginning \"#{string_description}\"..."
  $nesting_depth += 1
  ret_val = block.call
  $nesting_depth -= 1
  puts "#{prefix}" + 
       "...\"#{string_description}\" finished, returning \n" +
       "#{prefix}#{ret_val}"
  
end


# better_log 'outer block' do
#   better_log 'some little block' do
#     better_log 'another inner block' do
#       'So nice'
#     end
#     5
#   end
#   better_log 'yet annother block' do
#     'The key is 42'
#   end
#   false
# end