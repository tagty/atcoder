
# n = 3
# s = [
#   'ABCA',
#   'XBAZ',
#   'BAD',
# ]

n = gets.to_i

t, c1, c2, c3 = 0, 0, 0, 0

n.times do
  s_ = gets.chomp

  t += s_.scan('AB').length

  if s_[0] == 'B' && s_[-1] == 'A'
    c1 += 1
  elsif s_[-1] == 'A'
    c2 += 1
  elsif s_[0] == 'B'
    c3 += 1
  end
end

if c2 == 0 && c3 == 0
  puts t + [(c1 - 1), 0].max
else
  puts t + c1 + [c2, c3].min
end