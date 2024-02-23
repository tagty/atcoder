
# n = 4
# a = [4000, 4400, 5000, 3200]
# q = 3
# b = [
#   3199,
#   5001,
#   4229,
# ]

# n = 1
# a = [4230]
# q = 3
# b = [
#   3312,
#   2992,
#   4229,
# ]

n = gets.to_i
a = gets.split(' ').map(&:to_i)
q = gets.to_i
b = []
q.times do
  b << gets.to_i
end

a = a.sort
# p a

b.each do |b_|
  # p '---'
  j = a.bsearch_index { |x| x >= b_ }
  # p j
  ans = []
  if j.nil?
    puts (b_ - a[-1]).abs
    next
  end
  # p a[j]
  if j < n
    ans << (b_ - a[j]).abs
  end
  if j > 0
    ans << (b_ - a[j - 1]).abs
  end
  # p ans
  puts ans.min
end
