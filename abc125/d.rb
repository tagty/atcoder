
# n = 3
# a = [-10, 5, -4]

n = gets.to_i
a = gets.split(' ').map(&:to_i)

num_minus = a.count { |v| v < 0 }
sum_abs = a.map(&:abs).sum
min_abs = a.map(&:abs).min

if num_minus % 2 == 0
  puts sum_abs
else
  puts (sum_abs - min_abs * 2)
end