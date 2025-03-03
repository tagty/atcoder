n = gets.to_i
h = gets.split(' ').map(&:to_i)

count = 0
h.each_with_index do |hi, i|
  if i == 0
    count += 1
  else
    if hi >= h[0..i].max
      count += 1
    end
  end
end

puts count
