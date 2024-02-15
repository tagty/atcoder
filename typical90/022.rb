
# a, b, c = 2, 2, 3
a, b, c = gets.split(' ').map(&:to_i)

gcd_ = a.gcd(b).gcd(c)

a_ = a / gcd_ - 1
b_ = b / gcd_ - 1
c_ = c / gcd_ - 1

puts a_ + b_ + c_
