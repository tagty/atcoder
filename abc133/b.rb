n, d = gets.split(' ').map(&:to_i)
x = []
n.times do
  x << gets.split(' ').map(&:to_i)
end
ans = 0
(0...n).to_a.combination(2) do |i, j|
  dist = Math.sqrt(x[i].zip(x[j]).map { |a, b| (a - b)**2 }.sum)
  ans += 1 if dist == dist.to_i
end
puts ans
