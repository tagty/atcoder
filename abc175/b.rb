n = gets.to_i
l = gets.split.map(&:to_i)

count = l.combination(3).count do |a, b, c|
  a != b && b != c && a != c && a + b > c && a + c > b && b + c > a
end

puts count
