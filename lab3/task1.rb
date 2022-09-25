class Task1
  @@a = true
  @@b = true
  @@c = false
  @@x = 2
  @@y = 10
  @@z = -50
  def result1
    !(@@a || @@b) && (@@a and !@@b) #false
  end
  def result2
    ((@@z != @@y).object_id <= (6 >= @@y).object_id) && @@a || @@b && @@c && (@@x.object_id >= 1.5.object_id)
  end
  def result3
    (8 - @@x*2 <=@@z) && (@@x**2 >= @@y**2) || (@@z >= 15)
  end
  def result4
    (@@x > 0) && (@@y < 0) || @@z >= (((@@x*@@y)-@@y/@@x) - (-@@z))
  end
  def result5
    !(@@a || @@b && !(@@c || (!@@a || @@b)))
  end
  def result6
    (@@x**2 + @@y**2 >=1) && @@x >= 0 && @@y >=0
  end
  def result7
    (@@a && (@@c &&@@b != @@b || @@a) || @@c) && @@b
  end
  def result8(p, x)
    (Math.log(x,2.71) < x) and !p and (Math.sqrt(x) > x*x) || (2 * x == x)
  end
end