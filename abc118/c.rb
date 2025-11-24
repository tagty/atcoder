n = gets.to_i
a = gets.split.map(&:to_i)
puts a.reduce { |x, y| x.gcd(y) }
