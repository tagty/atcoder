
t = 38
l, x, y = '79 13 98'.split(' ').map(&:to_i)
q = 10
e = [
  7,
  10,
  28,
  20,
  25,
  10,
  28,
  36,
  2,
  16,
]

# t = gets.to_i
# l, x, y = gets.split(' ').map(&:to_i)
# q = gets.to_i
# e = []
# q.times do
#   e << gets.to_i
# end

e.each do |e_|
  theta = 2 * Math::PI * e_ / t
  y_ = - l / 2 * Math.sin(theta)
  z_ = l / 2 - l / 2 * Math.cos(theta)
  b = Math.sqrt(x ** 2 + (y - y_) ** 2)
  ans = 180 / Math::PI * Math.atan(z_ / b)
  puts ans
end
