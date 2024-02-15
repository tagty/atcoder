
require 'set'

# n = 5

# s = 'e869120
# atcoder
# e869120
# square1001
# square1001'.split("\n")

n = gets.to_i
ss = Set.new
n.times do |i|
  s = gets.chomp
  next if ss.include?(s)
  ss << s
  puts i + 1
end
