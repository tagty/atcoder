o = gets.chomp.split('')
e = gets.chomp.split('')
ans = ''
o.size.times do |i|
  ans += o[i]
  ans += e[i] if e[i]
end
puts ans
