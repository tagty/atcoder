n, k = gets.split(' ').map(&:to_i)
h = []
n.times do
  h << gets.to_i
end

h.sort!
puts h.each_cons(k).map { |a| a.last - a.first }.min
