
# n, q = '3 3'.split(' ').map(&:to_i)
# a = '1 2 3'.split(' ').map(&:to_i)
# lrv = [
#   '2 3 1'.split(' ').map(&:to_i),
#   '1 2 -1'.split(' ').map(&:to_i),
#   '1 3 2'.split(' ').map(&:to_i),
# ]

n, q = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
lrv = []
q.times do
  lrv << gets.split(' ').map(&:to_i)
end

b = []
(n - 1).times do |i|
  b << a[i + 1] - a[i]
end
b << 0

ans = b.map(&:abs).sum
lrv.each do |l, r, v|
  l, r = l - 1, r - 1
  before = b[l - 1].abs + b[r].abs

  if l != 0
    b[l - 1] += v
  end

  if r != n - 1
    b[r] -= v
  end

  after = b[l - 1].abs + b[r].abs
  ans += after - before
  puts ans
end
