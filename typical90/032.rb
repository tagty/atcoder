
# n = 4
# a = [
#   [1, 2, 3, 4],
#   [5, 6, 7, 8],
#   [9, 10, 11, 12],
#   [13, 14, 15, 16],
# ]
# m = 3
# xy = [
#   [1, 2],
#   [1, 3],
#   [2, 3],
# ]

n = gets.to_i
a = []
n.times do
  a << gets.split(' ').map(&:to_i)
end
m = gets.to_i
xy = []
m.times do
  xy << gets.split(' ').map(&:to_i)
end

r = Array.new(n) { Array.new(n, 0) }
xy.each do |x, y|
  r[x - 1][y -1] = r[y - 1][x - 1] = 1
end

players = [*1..n]
players = players.permutation.to_a
ans = 1000 * n

# players.each do |p_|
#   tmp = 0
#   valid = true
#   p_.each_with_index do |p__, i|
#     if i < n - 1 && r[p_[i] - 1][p_[i + 1] - 1] == 1
#       valid = false
#     end
#     tmp += a[p_[i] - 1][i]
#   end
#   if valid == false
#     next
#   end
#   ans = [ans, tmp].min
# end

players.each do |p_|
  tmp = 0
  valid = true
  n.times do |i|
    if i < n - 1 && r[p_[i] - 1][p_[i + 1] - 1] == 1
      valid = false
    end
    tmp += a[p_[i] - 1][i]
  end
  if valid == false
    next
  end
  ans = [ans, tmp].min
end

if ans == 1000 * n
  puts -1
else
  puts ans
end
