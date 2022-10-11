
class Task1
  public
  def Task1.integrate_rectangle(a, b, n, dx = (b - a) / n)
    x = a + dx / 2
    sum = 0
    (1..n).each {
      y = yield(x)
      sum += dx * y
      x += dx
    }
    return sum
  end
  public
  def Task1.integrate_trapezoid(a, b, n, dx = (b - a) / n)
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
end
def f1(x)
  Math.sqrt(2 ** x - 1)
end
def f2(x)
  Math.asin(Math.sqrt(x)) / Math.sqrt(x*(1-x)).to_f
end