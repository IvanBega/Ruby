puts "Enter x_start: "
x_start = gets.chomp.to_f
puts "Enter x_end: "
x_end = gets.chomp.to_f
puts "Enter dX: "
dX = gets.chomp.to_f

puts "Enter a: "
a = gets.chomp.to_f
puts "Enter b: "
b = gets.chomp.to_f
puts "Enter c: "
c = gets.chomp.to_f

def truncate?(a, b, c)
  if (a.truncate & b.truncate) | (b.truncate & c.truncate) == 0
    true
  end
  false
end

def function(x, a, b, c)
  if x + 5 < 0 && c == 0
    return (1 / a * x) - b
  end
  if x + 5 > 0 && c != 0
    return (x - a) / x
  end

  10 * x / (c - 4)
end

(x_start..x_end).step(dX).each do
  |x|
  print "x = #{x}, f(x) = "
  if truncate?(a, b, c)
    puts function(x, a, b, c).truncate
  else
    puts function(x, a, b, c)
  end
end