n = gets.to_i
h = Hash.new(0)

n.times { h[gets.chomp] += 1 }

m = gets.to_i
m.times { h[gets.chomp] -= 1 }

puts [h.values.max, 0].max
