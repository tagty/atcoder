
# a = 1
# b = 2
# c = 3
# k = 1

a, b, c, k = gets.split(' ').map(&:to_i)

if k % 2 == 0
  puts a - b
else
  puts b - a
end
