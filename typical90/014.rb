
# n = 1
# a = [869]
# b = [120]

n = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)

a = a.sort
b = b.sort

result = 0
n.times do |i|
  result += (a[i] - b[i]).abs
end

puts result
