def Y(x, c, n)
  s1 = (x**2 + x * ((x**2 - c**2) ** 0.5))**(1.0/n)
  s2 = (x**2 + 1).to_f / (1.0/x + 1.0/n)
  s3 = (3*x + c ** x).to_f / (x + 1)
  return s1 + s2 +s3
end

def Z(x)
  s1 = 1.0 / Math.sin(4 * x)
  s2 = Math.tan(7*Math::PI/2 + 4 * x)
  s3 = Math.tan(5*Math::PI + x)
  return 2 * (s1 - s2) + s3
end

def subtask1(c, n)
  x = 1.0
  step = (n - 1)/(n + c)
  puts "step is #{step}"
  while x <= n
    puts "#{x} | #{Y(x, c, n).round(10)}"
    x += step
  end
end

def subtask2(c, n)
  x = Math::PI / n
  step = (Math::PI - x)/((3/2)*n + c)
  puts "step is #{step}"
  while x <= Math::PI
    puts "#{x} | #{Z(x)}"
    x += step
  end
end
def F(x, c, n)
  case x
  when 2...n
    return Y(x, c, n)
  when n...2*n
    return Z(x)
  else
    return Y(x, c, n) + Z(x)
  end
end
def subtask3(c, n)
  x = 2.0
  step = (c - 2)/(2 * n)
  puts "step is #{step}"
  while x <= c
    puts "#{x} | #{F(x, c, n)}"
    x += step
    return if x == c && step == 0
  end
end


print "Enter N: "
n = gets.chomp.to_f

print "Enter c: "
c = gets.chomp.to_f

puts "Part 1:"
puts "X | Y"
subtask1(c,n )

puts "\n\nPart 2:"
puts "X | Z"
subtask2(c,n)

puts "\n\nPart 3:"
puts "x | F"
subtask3(c, n)