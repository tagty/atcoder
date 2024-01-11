
# n = 2
# x = 7
# n = 1
# x = 1
# n = 50
# x = 51

n, x = gets.split(' ').map(&:to_i)

def rec(n, x, l, s)
  if n == 0
    return 1
  end

  if x == 1
    0
  elsif x <= l[n - 1] + 1
    rec(n - 1, x - 1, l, s)
  elsif x == l[n - 1] + 2
    s[n - 1] + 1
  elsif x <= l[n - 1] * 2 + 2
    rec(n - 1, x - l[n - 1] - 2, l, s) + s[n - 1] + 1
  else
    s[n - 1] * 2 + 1
  end
end

l = [1] * (n + 1)
s = [1] * (n + 1)

(1..(n + 1)).each do |i|
  l[i] = l[i - 1] * 2 + 3
  s[i] = s[i - 1] * 2 + 1
end

puts rec(n, x, l, s)
