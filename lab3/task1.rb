# Part 1
a = true
b = true
c = false
x = 2
y = 10
z = -50
result1 = !(a || b) && (a and !b)
puts result1
result2 = ((z != y).object_id <= (6 >= y).object_id) && a || b && c && (x.object_id >= 1.5.object_id)
puts result2
result3 = (8 - x*2 <=z) && (x**2 >= y**2) || (z >= 15)
puts result3
result4 = (x > 0) && (y < 0) || z >= (((x*y)-y/x) - (-z))
puts result4
result5 = !(a || b && !(c || (!a || b)))
puts result5
result6 = (x**2 + y**2 >=1) && x >= 0 && y >=0
puts result6
result7 = (a && (c &&b != b || a) || c) && b
puts result7

# Part 2
x = 4
P = false

result = (Math.log(x,2.71) < x) and !P and (Math.sqrt(x) > x*x) || (2 * x == x)
puts result