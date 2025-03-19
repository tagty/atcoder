s = gets.chomp

s = s.split('')
ans = 0
n = s.size / 2
n.times do |i|
  ans += 1 if s[i] != s[-i-1]
end
puts ans
