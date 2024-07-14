
# l, r = '3 5'.split(' ').map(&:to_i)
# l, r = '98 100'.split(' ').map(&:to_i)
# l, r = '1001 869120'.split(' ').map(&:to_i)
# l, r = '381453331666495446 746254773042091083'.split(' ').map(&:to_i)
l, r = gets.split(' ').map(&:to_i)

# ans = 0
# (l..r).each do |x|
#   d =  Math.log10(x).to_i + 1
#   ans += d * x
# end

# ans = (l..r).sum do |x|
#   (Math.log10(x).to_i + 1) * x
# end
# puts ans % (10 ** 9 + 7)

mod = 10 ** 9 + 7
min_digit = l.to_s.length
max_digit = r.to_s.length

ans = 0
(min_digit..max_digit).each do |i|
  min_num = [l, 10 ** (i - 1)].max
  max_num = [r, 10 ** i - 1].min
  num = max_num - min_num + 1
  ans += num * (min_num + max_num) / 2 * i
end

puts ans % mod
