s = gets.chomp
t = gets.chomp
ans = t.length

(s.length - t.length + 1).times do |i|
  diff_count = (0...t.length).count { |j| s[i + j] != t[j] }
  ans = [ans, diff_count].min
end

puts ans
