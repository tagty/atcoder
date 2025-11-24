n = gets.to_i
x = gets.split.map(&:to_i)

sx = x.sort
mid = n / 2

x.each do |v|
  if v < sx[mid]
    puts sx[mid]
  else
    puts sx[mid - 1]
  end
end
