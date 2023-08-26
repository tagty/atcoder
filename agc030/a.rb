
# a = 3
# b = 1
# c = 4

a, b, c = gets.split(' ').map(&:to_i)

if a + b + 1 >= c
  puts b + c
else
  puts b + a + b + 1
end