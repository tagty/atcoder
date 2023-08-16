
require 'set'

# n = 4
# d = [10, 8, 8, 6]
n = gets.to_i
d = readlines.map(&:to_i)

puts Set.new(d).count
