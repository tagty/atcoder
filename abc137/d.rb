
# n, m = 3, 4
n, m = gets.split(' ').map(&:to_i)

# ab = [
#   [4, 3],
#   [4, 1],
#   [2, 2],
# ]
ab = []
n.times do
  ab << gets.split(' ').map(&:to_i)
end

atob = []
(m + 1).times do
  atob << []
end

ab.each do |a, b|
  if a > m
    next
  end
  atob[a] << b
end

result = 0

que = []

atob.each do |bs|
  bs.each do |b|
    que << b
  end
  if !que.empty?
    result += que.max
    que.pop
  end
end

puts result
