n = gets.to_i

a = [1, 2, 4, 8, 16, 32, 64]
puts a.select { |x| x <= n }.max
