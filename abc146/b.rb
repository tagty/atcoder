n = gets.to_i
s = gets.chomp

s = s.split('')
ans = ''
s.each do |c|
  n.times do
    c = c == 'Z' ? 'A' : c.next
  end
  ans += c
end
puts ans
