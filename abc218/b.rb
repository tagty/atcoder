q = gets.split(' ').map(&:to_i)

s = 'abcdefghijklmnopqrstuvwxyz'
ans = ''
q.each do |i|
  ans += s[i-1]
end
puts ans
