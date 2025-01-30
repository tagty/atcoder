n = gets.to_i

ans = 0
(1..n).each do |i|
  if i % 5 != 0 && i % 3 != 0
    ans += i
  end
end

puts ans
