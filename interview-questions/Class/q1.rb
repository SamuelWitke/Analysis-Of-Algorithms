# Swap the values of two integer variables in-place 
q = 4
r = 3
puts "#{q},#{r}"
r = r - q
q = q + r
r = q - r 
puts "#{q},#{r}"
