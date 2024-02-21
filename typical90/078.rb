
# n, m = 7, 18
n, m = gets.split(' ').map(&:to_i)
# ab = [
#   [7, 2],
#   [1, 6],
#   [5, 2],
#   [1, 3],
#   [7, 6],
#   [5, 3],
#   [5, 6],
#   [5, 4],
#   [1, 7],
#   [2, 6],
#   [3, 4],
#   [5, 1],
#   [4, 7],
#   [4, 6],
#   [5, 7],
#   [3, 2],
#   [4, 2],
#   [1, 4],
# ]
ab = []
m.times do
  ab << gets.split(' ').map(&:to_i)
end

v = {}
ab.each do |ab_|
  a = ab_.min
  b = ab_.max
  # 自分よりも小さい頂点
  if v[b].nil?
    v[b] = [a]
  else
    v[b] << a
  end
end

count = 0
n.times do |i|
  i += 1
  # p i
  next if i == 1
  next if v[i].nil?
  if v[i].count == 1
    count += 1
  end
end

puts count
