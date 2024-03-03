
# n, q = 8, 5
# a = '6 17 2 4 17 19 1 7'.split(' ').map(&:to_i)
# txy = [
#   '2 0 0'.split(' ').map(&:to_i),
#   '1 7 2'.split(' ').map(&:to_i),
#   '1 2 6'.split(' ').map(&:to_i),
#   '1 4 5'.split(' ').map(&:to_i),
#   '3 4 0'.split(' ').map(&:to_i),
# ]

n, q = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
txy = []
q.times do
  txy << gets.split(' ').map(&:to_i)
end

r_cnt = 0
txy.each do |t, x, y|
  x, y = x - r_cnt, y - r_cnt
  if t == 1
    ax = a[x - 1]
    ay = a[y - 1]
    a[x - 1] = ay
    a[y - 1] = ax
  elsif t == 2
    # an = a.pop
    # a.unshift an
    r_cnt += 1
    if r_cnt == n
      r_cnt = 0
    end
  else
    puts a[x - 1]
  end
end
