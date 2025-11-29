a, b, c, x, y = gets.split.map(&:to_i)

# ケース1：全部単体
ans = a * x + b * y

# ケース2：min(x, y) を AB で買う + 残りは単体
m = [x, y].min
cost2 = m * 2 * c + (x - m) * a + (y - m) * b
ans = [ans, cost2].min

# ケース3：全部 AB
cost3 = [x, y].max * 2 * c
ans = [ans, cost3].min

puts ans
