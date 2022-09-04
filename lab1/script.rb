puts "Enter a:"
a = gets.chomp.to_f
puts "Enter b:"
b = gets.chomp.to_f
puts "Enter c:"
c = gets.chomp.to_f
puts "Enter d:"
d = gets.chomp.to_f
puts "Enter s:"
s = gets.chomp.to_f
puts "Enter x:"
x = gets.chomp.to_f
fraction_1 = (Math.log10(x**3) ** 2 + 0.375 * d) / ((2.71 ** (x ** 2)) * Math.sqrt(c + a))
fraction_2 = (Math.tan(3.14/6) ** 2 - x ** (3/s)) / (0.316*b*c - a **2).abs
result = fraction_1 + fraction_2
puts result