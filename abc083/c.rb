x, y = gets.split.map(&:to_i)
ans = 1
while x * 2 <= y
  x *= 2
  ans += 1
end
puts ans
