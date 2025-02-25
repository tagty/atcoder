k = gets.to_i
a, b = gets.split(' ').map(&:to_i)

puts a.to_s.to_i(k) * b.to_s.to_i(k)
