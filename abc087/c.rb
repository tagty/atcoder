n = gets.to_i
a = 2.times.map { gets.split.map(&:to_i) }

ans = 0
(0...n).each do |i|
  sum = a[0][0..i].sum + a[1][i..].sum
  ans = ans > sum ? ans : sum
end

puts ans
