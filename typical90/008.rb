
# n = 10
# s = 'attcordeer'

n = gets.to_i
s = gets

@mod = 1000000007
t = 'atcoder'

def add(a, b)
  a += b
  if a >= @mod
    a -= @mod
  end
  return a
end

dp = Array.new(n + 1) { Array.new(t.length + 1, 0) }
dp[0][0] = 1

n.times do |i|
  (t.length + 1).times do |j|
    dp[i + 1][j] = add(dp[i + 1][j], dp[i][j])
    if j < t.length && s[i] == t[j]
      dp[i + 1][j + 1] = add(dp[i + 1][j + 1], dp[i][j])
    end
  end
end

puts dp[n][t.length]
