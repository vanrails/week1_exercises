
def no_mutate_capitalize(var)
  var.capitalize
end

def mutate_capitalize(var)
  var.capitalize!
end

# 1
local_var = 10

5.times do
  local_var -= 1
end

puts local_var # has been changed from inside do/end block

# a)
1.times do
  local_var = 'hello'
end

puts local_var # reasigned from inside do/end block

# b)
no_mutate_capitalize(local_var)
puts local_var

# c)
mutate_capitalize(local_var)
puts local_var

# 2
1.times do
  inner_var = 'special'
  puts inner_var
  1.times do
    inner_inner_var = 'extra special'
  end
end

puts inner_var # this should throw an error

# => NESTED do/end blocks
# variables maintain scope to the inner most do/end blocks it's connected to