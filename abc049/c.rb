
# s = 'erasedream'
s = gets.chomp
n = s.length

dp = []

(n + 1).times do
  dp << false
end

dp[0] = true

(n + 1).times do |i|
  if i >= 5 && dp[i - 5] && s[(i - 5)..(i - 1)] == 'erase'
    dp[i] = true
  end
  if i >= 6 && dp[i - 6] && s[(i - 6)..(i - 1)] == 'eraser'
    dp[i] = true
  end
  if i >= 5 && dp[i - 5] && s[(i - 5)..(i - 1)] == 'dream'
    dp[i] = true
  end
  if i >= 7 && dp[i - 7] && s[(i - 7)..(i - 1)] == 'dreamer'
    dp[i] = true
  end
end

if dp[n]
  puts 'YES'
else
  puts 'NO'
end
