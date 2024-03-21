
# h, w = '3 3'.split(' ').map(&:to_i)
# a = [
#   '0 0 0'.split(' ').map(&:to_i),
#   '0 0 0'.split(' ').map(&:to_i),
#   '0 0 0'.split(' ').map(&:to_i),
# ]
# b = [
#   '1 1 0'.split(' ').map(&:to_i),
#   '1 1 0'.split(' ').map(&:to_i),
#   '0 0 0'.split(' ').map(&:to_i),
# ]

h, w = gets.split(' ').map(&:to_i)
a = []
h.times do
  a << gets.split(' ').map(&:to_i)
end
b = []
h.times do
  b << gets.split(' ').map(&:to_i)
end

cnt = 0
(h - 1).times do |h_|
  (w - 1).times do |w_|
    if a[h_][w_] != b[h_][w_]
      value = a[h_][w_] - b[h_][w_]
      a[h_][w_] -= value
      a[h_ + 1][w_] -= value
      a[h_][w_ + 1] -= value
      a[h_ + 1][w_ + 1] -= value

      cnt += value.abs
    end
  end
end

w.times do |w_|
  if a[h - 1][w_] != b[h - 1][w_]
    puts 'No'
    return
  end
end

h.times do |h_|
  if a[h_][w - 1] != b[h_][w - 1]
    puts 'No'
    return
  end
end

puts 'Yes'
puts cnt
