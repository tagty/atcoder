
# n, x = 3, 3
n, x = gets.split(' ').map(&:to_i)
# a = [2, 2, 2]
a = gets.split(' ').map(&:to_i)

result = 0

if a[0] > x
  result += a[0] - x
  a[0] = x
end

(n - 1).times do |i|
  if a[i] + a[i + 1] > x
    result += a[i] + a[i + 1] - x
    a[i + 1] = x - a[i]
  end
end

puts result
