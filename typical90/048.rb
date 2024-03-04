
# n, k = 4, 3
# ab = [
#   '4 3'.split(' ').map(&:to_i),
#   '9 5'.split(' ').map(&:to_i),
#   '15 8'.split(' ').map(&:to_i),
#   '8 6'.split(' ').map(&:to_i),
# ]

n, k = gets.split(' ').map(&:to_i)
ab = []
n.times do
  ab << gets.split(' ').map(&:to_i)
end

scores = []
ab.each do |a, b|
  scores << b
  scores << (a - b)
end
scores = scores.sort.reverse

ans = 0
k.times do |i|
  ans += scores[i]
end
puts ans
