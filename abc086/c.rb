
# n = 2
n = gets.to_i

# t = [0, 3, 6]
# x = [0, 1, 1]
# y = [0, 2, 1]

t = [0]
x = [0]
y = [0]

n.times do
  txy = gets.split(' ').map(&:to_i)
  t << txy[0]
  x << txy[1]
  y << txy[2]
end

can = true
n.times do |i|
  dt = t[i + 1] - t[i]
  dx = x[i + 1] - x[i]
  dy = y[i + 1] - y[i]
  dist = dx.abs + dy.abs
  if dt < dist
    can = false
  end
  if dist % 2 != dt % 2
    can = false
  end
end

if can
  puts 'Yes'
else
  puts 'No'
end
