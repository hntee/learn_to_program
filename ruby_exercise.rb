# actually, I have watched the videos ruby20131026_session1 
# before reaching these exercises, so...
require 'pry'
# 1 
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|e| puts e}

# 2
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|e| puts e if e > 5}

# 3
new_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|e| e % 2 == 1}
# or (configured after watching the solution)
new_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|e| e.odd?}

# 4
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a << 'll'
a.unshift 0

# 5
a.pop
a.push 3

# 6
a.uniq

# 7
# a) The look up time of array is O(n) while 
#    O(1) in a hash table
# b) Array can be ordered while Hash can't

# 8
h = {:a => 1, :b => 2, :c => 3, :d => 4}
h = {a:1, b:2, c:3, d:4}

# 9
puts h[:b]

# 10
h[:e] = 5

# 11
h.select! {|k,v| v >= 3.5}
# or 
h.delete_if {|k,v| v < 3.5}

# 12
h[:f] = [999,31,3]
a = [1,3,{e:5, c:3}]


puts h,a.to_s


# 13
# I am not sure what these api does and
# how to use them right now...
