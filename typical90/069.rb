
# n, k = '2 3'.split(' ').map(&:to_i)
# n, k = '10 2'.split(' ').map(&:to_i)
# n, k = '2021 617'.split(' ').map(&:to_i)
n, k = gets.split(' ').map(&:to_i)

mod = 10 ** 9 + 7

if n == 1
  puts k % mod
else
  puts k * (k - 1) * (k - 2).pow((n - 2), mod) % mod
end
