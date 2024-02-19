
# h, w = 2, 3
# h, w = 3, 4
# h, w = 3, 6
h, w = gets.split(' ').map(&:to_i)

if h == 1
  puts w
  return
end

if w == 1
  puts h
  return
end

tate = h / 2
if (h % 2) == 1
  tate += 1
end

yoko = w / 2
if (w % 2) == 1
  yoko += 1
end

puts tate * yoko
