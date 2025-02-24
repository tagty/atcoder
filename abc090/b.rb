a, b = gets.split(' ').map(&:to_i)

count = 0
(a..b).each do |i|
  i = i.to_s
  if i[0] == i[4] && i[1] == i[3]
    count += 1
  end
end

puts count
