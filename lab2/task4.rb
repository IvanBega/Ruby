$number = 145
$base = 2
$result = ""

$copy = $number
while ($number > 0) do
  digit = ($number % $base).to_s
  $result += digit
  $number /= $base
end

puts "#{$copy} in binary is equal to #{$result.reverse}"