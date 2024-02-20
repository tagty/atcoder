
# n, k = 2311640221315, 15
n, k = gets.split(' ').map(&:to_i)

n = n.to_s
k.times do
  # 10進法に
  n = n.to_i(8)
  # 9進法に
  n = n.to_s(9)
  n = n.gsub('8', '5')
end

puts n
