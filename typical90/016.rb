
n = 227
a, b, c = [21, 47, 56]

# n = gets.to_i
# a, b, c = gets.split(' ').map(&:to_i)

ans = 9999
ans.times do |use_a|
  (ans - use_a).times do |use_b|
    use_c = (n - (a * use_a + b * use_b)) / c
    if a * use_a + b * use_b + c * use_c == n && use_c >= 0
      ans = [ans, use_a + use_b + use_c].min
    end
  end
end

puts ans
