# n = 4
# s = 'ooxo'
n = gets.to_i
s = gets

block = []
num = 0

n.times do |i|
  num += 1
  if i != (n - 1) && s[i] != s[i + 1]
    block << num
    num = 0
  end
end

block << num

all = n * (1 + n) / 2

com = 0
block.each do |b|
  com += b * (1 + b) / 2
end

puts (all - com)
