a, b, k = gets.split(' ').map(&:to_i)

(a..[b, a + k - 1].min).each { |i| puts i }
([b - k + 1, a + k].max..b).each { |i| puts i }
