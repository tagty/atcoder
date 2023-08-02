
# n = 3
# a = [8, 12, 40]
n = gets.to_i
a = gets.split(' ').map(&:to_i)

counter = 0

while a.all? { |i| i % 2 == 0 }
  a = a.map { |i| i / 2 }
  counter += 1
end

puts counter
