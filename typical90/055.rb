
# n, p_, q = 6, 7, 1
n, p_, q = gets.split(' ').map(&:to_i)
# a_ = 1, 2, 3, 4, 5, 6
a_ = gets.split(' ').map(&:to_i)

ans = 0
a_.combination(5).each do |a, b, c, d, e|
  if a % p_ * b % p_ * c % p_ * d % p_ * e % p_ == q
    ans += 1
  end
end

puts ans
