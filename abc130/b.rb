n, x = gets.split(' ').map(&:to_i)
l = gets.split(' ').map(&:to_i)

count = 1
d = 0
l.each do |li|
  d += li
  if d <= x
    count += 1
  else
    break
  end
end

puts count
