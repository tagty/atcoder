
# n, k = 2, 5
# a = [1, 3]
# b = [2, 1]

n, k = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)

a.each do |a_|
end

dist = 0
a.each_with_index do |a_, i|
  next if a_ == b[i]
  dist += (a_ - b[i]).abs
end

if dist <= k && (k - dist) % 2 == 0
  puts "Yes"
else
  puts "No"
end