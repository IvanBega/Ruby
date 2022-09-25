class Task3
  def A()
    sum = 0
    (0..9).each {|i| sum += 1.0 / (3 ** i)}
    return sum
  end
  def B(x, n)
    sum = 0
    fact = 1
    (0..n + 1).each {
      |i|
      sum += (x.to_f ** i) / fact
      fact *= (i + 1)
    }

    return sum
  end
end