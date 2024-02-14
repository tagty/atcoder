
# n = 7
n = gets.to_i

# cp = [
#   [1, 72],
#   [2, 78],
#   [2, 94],
#   [1, 23],
#   [2, 89],
#   [1, 40],
#   [1, 75],
# ]
cp = []
n.times do
  cp << gets.split(' ').map(&:to_i)
end

# q = 1
q = gets.to_i

# lr = [
#   [2, 6]
# ]
lr = []
q.times do
  lr << gets.split(' ').map(&:to_i)
end

s1, s2 = [0], [0]
cp.each_with_index do |cp_, i|
  c, p_ = cp_
  if c == 1
    s1 << s1[i] + p_
    s2 << s2[i]
  else
    s1 << s1[i]
    s2 << s2[i] + p_
  end
end

lr.each do |l, r|
  a = s1[r] - s1[l - 1]
  b = s2[r] - s2[l - 1]
  puts "#{a} #{b}"
end
