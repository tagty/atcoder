
# n = 9
# y = 45000
n, y = gets.split(' ').map(&:to_i)

ares, bres, cres = -1, -1, -1

(0..n).each do |a|
  (0..n).each do |b|
    c = n - a - b

    if c < 0 || c > n
      next
    end

    if 10000 * a + 5000 * b + 1000 * c == y
      ares, bres, cres = a, b, c
    end
  end
end

puts "#{ares} #{bres} #{cres}"
