
# n, l = '3 2'.split(' ').map(&:to_i)
n, l = gets.split(' ').map(&:to_i)

dp = Array.new(n + 2, 0)
dp[0] = 1

(1..(n + 1)).each do |i|
  if i + 1 < l
    dp[i] = dp[i - 1] % (10 ** 9 + 7)
  else
    dp[i] = (dp[i - 1] + dp[i - l]) % (10 ** 9 + 7)
  end
end

puts dp[n]
