n = gets.to_i
a = gets.split.map(&:to_i)

ans = Float::INFINITY
x = 0
y = a.sum
(0..n-2).each do |i|
  x += a[i]
  y -= a[i]
  ans = [ans, (x - y).abs].min
end
puts ans
