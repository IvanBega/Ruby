class Task2
  def Y(x)
    case x
    when -4..0
      return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
    when 0..12
      return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
    else
      return 1 / ( 1 + x / (1 + x / (1 + x)))
    end
  end

end

puts Task2.new.Y(0.1)