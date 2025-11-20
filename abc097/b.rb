x = gets.to_i
ans = 1
(2..x).each do |b|
  y = b * b
  while y <= x
    ans = [ans, y].max
    y *= b
  end
end
puts ans
