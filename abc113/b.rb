n = gets.to_i
t, a = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i)

h.each_with_index do |hi, i|
  h[i] = (t - hi * 0.006 - a).abs
end

puts h.each_with_index.min[1] + 1
