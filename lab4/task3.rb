
def getMatrix(n, k)
  m = Array.new(n)
  n.times {
    |idx|
    m[idx] = Array.new(n, (k + 2).to_f);
  }
  m.each_with_index {
    |row, rIdx|
    row.each_with_index {
      |el, cIdx|
      m[rIdx][cIdx] = 2.to_f if rIdx == cIdx
    }
  }
  return m
end

def getVector(n)
  vec = []
  n.times {
    |idx|
    vec.push((idx + 1).to_f)
  }
  return vec
end

def printVector(vec, vertical = false)
  vec.each {
    |el|
    if (vertical)
      puts "#{el} "
    else
      print "#{el} "
    end
  }
  print "\n"
end

def printMatrix(matrix)
  matrix.each {
    |row|
    printVector(row)
  }
  print "\n"
end

def solveTriangular(a, b)
  x = Array.new(b.length)

  (a.length - 1).downto(0) {
    |rIdx|
    acc_sum = 0

    (a.length - 1).downto(rIdx + 1) {
      |cIdx|
      acc_sum += x[cIdx] * a[rIdx][cIdx]
    }

    x[rIdx] = b[rIdx] - acc_sum
  }

  return x
end

def solveGauss(a, b)
  n = a.length
  n.times {
    |rIdx|

    divCoef = a[rIdx][rIdx]
    a[rIdx].map! {
      |el|
      el /= divCoef
    }
    a[rIdx] = a[rIdx] #
    b[rIdx] /= divCoef

    (rIdx + 1).upto(n - 1) {
      |updRIdx|
      subtrCoef = a[updRIdx][rIdx]
      b[updRIdx] -= subtrCoef * b[rIdx]

      (rIdx).upto(n - 1) {
        |updElIdx|
        a[updRIdx][updElIdx] -= subtrCoef * a[rIdx][updElIdx]
      }
      a[updRIdx] = a[updRIdx]
    }
  }

  return solveTriangular(a, b)
end

#Entering n and k from keyboard
n = 0
k = 0
while n <= 0 || n > 9
  puts "Enter n [1, 9]:"
  n = gets.chomp.to_i
end

puts "Enter k:"
k = gets.chomp.to_i
puts ""


a = getMatrix(n, k)
b = getVector(n)
puts "Matrix A is"
printMatrix(a)

puts "Vector b is"
printVector(b, true)

puts "Solution is"
printVector(solveGauss(a, b), true)
