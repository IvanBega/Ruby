=begin
  Виконати додавання матриць А та B.
=end
def getMatrix(n)
  m = []

  n.times {
    |i|
    row = []
    n.times {
      |j|
      if (i == j)
        row.push(1)
      else
        row.push(rand(10))
      end
    }
    m.push(row)
  }
  return m
end

def printMatrix(matrix)
  matrix.each {
    |row|
    row.each {
      |elem|
      print "#{elem} "
    }
    print "\n"
  }
  print "\n"
end

def addMatrices(a, b)
  c = Array.new(a.length) {Array.new(a[0].length) {0} }
  (0..a.length - 1).each { |i|
    (0..a[i].length - 1).each { |j|
      c[i][j] = a[i][j] + b[i][j]
    }
  }
  return c
end
a = getMatrix(8)
b = getMatrix(8)
c = addMatrices(a, b)
printMatrix(a)
printMatrix(b)
printMatrix(c)