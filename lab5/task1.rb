def f1(x)
  Math.sqrt(2 ** x - 1)
end

def f2(x)
  Math.asin(Math.sqrt(x)) / Math.sqrt(x*(1-x)).to_f
end

def integrate_rectangle(a, b, n, dx = (b - a) / n)
  x = a + dx / 2
  sum = 0
  (1..n).each {
    y = yield(x)
    sum += dx * y
    x += dx
  }
  return sum
end

def integrate_trapezoid(a, b, n, dx = (b - a) / n)
  x = a + dx
  sum = dx * (yield(a) / 2 - yield(b) / 2)
  loop {
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > b
  }
  return sum
end
puts "Task 1"
x = integrate_rectangle(0.3, 1, 1000.0) {|x| f1(x)}
puts x, "\n"
x = integrate_trapezoid(0.3, 1, 1000.0) {|x| f1(x)}
puts x, "\n"

x = integrate_rectangle(0.2, 0.3, 1000.0) {|x| f2(x)}
puts x, "\n"
x = integrate_trapezoid(0.2, 0.3, 1000.0) {|x| f2(x)}
puts x, "\n"