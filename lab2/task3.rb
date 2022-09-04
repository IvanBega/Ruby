
number = "1000010010010"

$result = 0
$power = 1
for i in 0..number.length-1 do
  $result += number[number.length-1-i].to_i * $power
  $power *= 2
end

puts "#{number} in decimal is equal to #{$result}"