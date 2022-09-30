=begin
Задан массив вещественных чисел В(16). Найти сумму четных значений их
целых частей, а также сумму их индексов.
=end
class Task1
  @@B = [1.24, 5.14, -8.445, -8.134, 13487, 8.1, 58.1, 478,
        93.34, 9.1850, 13.4, -134.8, -3.73, 0.012, -14,174, 9.5]
  def compute
    sum = 0
    index_sum = 0
    @@B.each_with_index do
    |val, index|
      truncated = val.truncate
      if (truncated % 2 == 0)
        sum += truncated
        index_sum += index
        puts "Adding #{truncated} with index #{index}"
      end
    end
    return sum, index_sum
  end
end

sum, index_sum = Task1.new.compute
puts "Sum is #{sum}, sum of indexers is #{index_sum}"