# Play around with variable scope and test out different scenarios.

# 1 Create a local variable and modify it at an inner scope (in between
#   a do/end block). You can try

# a) re-assigning the variable to something else
# b) call a method that doesn’t mutate the caller
# c) call a method that mutates the caller.
# 2  Create a local variable at an inner scope (within a do/end block) 
#    and try to reference it in the outer scope. What happens when you 
#    have nested do/end blocks?


i = [1,2,3]
3.times do 
  
end
puts i
