
# n = 3
# m = 2
# q = 3

# uv = [
#   [1, 2],
#   [2, 3],
# ]

# c = [5, 10, 15]

# s = [
#   [1, 2],
#   [2, 1, 20],
#   [1, 1],
# ]

n, m, q = gets.split(' ').map(&:to_i)
uv = []
m.times do
  uv << gets.split(' ').map(&:to_i)
end
c = gets.split(' ').map(&:to_i)
s = []
q.times do
  s << gets.split(' ').map(&:to_i)
end

g = []

uv.each do |u, v|
  u -= 1
  v -= 1

  if g[u]
    g[u] << v
  else
    g[u] = [v]
  end

  if g[v]
    g[v] << u
  else
    g[v] = [u]
  end
end

s.each do |s_|
  t, x, y = s_

  x -= 1

  puts c[x]

  if t == 1
    next if g[x].nil?
    g[x].each do |v|
      c[v] = c[x]
    end
  else
    c[x] = y
  end
end
