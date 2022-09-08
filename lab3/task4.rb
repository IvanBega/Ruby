def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

def series1()
  eps = 0.00001
  sum = 0
  addend = 1
  n = 2
  while (addend > eps) do
    addend = ( factorial(n - 1).to_f / factorial(n + 1)) ** (n*(n+1))
    sum += addend
    n += 1
  end
  return sum
end

sum1 = series1()
puts sum1

def series2()
  eps = 0.00001
  sum = 0
  addend = 1
  n = 1
  sign = +1
  while (addend > eps)
    addend = 1.0 / n * sign
    sum += addend
    n += 2
    sign = -1 * sign
  end
  return sum
end

sum2 = series2()
puts "1 - 1/3 + 1/5 - ... equals to #{sum2} with precision 0.00001"
puts "PI/4 equals to #{Math::PI/4.0}"
puts "Error is #{Math::PI/4.0 - sum2}"

def series3()
  sum = 0
  eps = 0.00001
  n = 1
  addend = 1
  while (addend > eps) do
    addend = (factorial(3*n - 1) * factorial(2*n - 1)).to_f / (factorial(4*n) * factorial(2*n) * (3 ** (2*n)))
    sum += addend
    n +=1
  end
  return sum
end

puts series3()