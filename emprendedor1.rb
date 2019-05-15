p = ARGV[0].to_i
u = ARGV[1].to_i
g = ARGV[2].to_i
rentable = 0
t = (p * u) - g
 if t > 0
   rentable = t - (t * 0.35)
end
puts rentable
  
