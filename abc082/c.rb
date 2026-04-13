gets
a = gets.split.map(&:to_i)

ans = 0
a.tally.each do |k, v|
  ans += v >= k ? v - k : v
end
puts ans
