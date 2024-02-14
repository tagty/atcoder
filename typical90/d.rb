
# h, w = 3, 3
# h, w = '4 4'.split(' ').map(&:to_i)
h, w = gets.split(' ').map(&:to_i)

# a = [
#   [1, 1, 1],
#   [1, 1, 1],
#   [1, 1, 1],
# ]

# a = []
# rows = '3 1 4 1
# 5 9 2 6
# 5 3 5 8
# 9 7 9 3'.split("\n")
# rows.each do |row|
#   a << row.split(' ').map(&:to_i)
# end

a = []
h.times do
  a << gets.split(' ').map(&:to_i)
end

yoko = []
tate = []
a.each do |row|
  row.each_with_index do |line, i|
    tate[i] ||= 0
    tate[i] += line
  end
  yoko << row.sum
end

b = []
a.each_with_index do |row, i|
  b << []
  row.each_with_index do |line, j|
    b[i] << yoko[i] + tate[j] - line
  end
end

result = b.map do |row|
  row.join(' ')
end.join("\n")

puts result
