
# n = 8
# q = 3
# s = 'ACACTACG'
# lr = [
#   [3, 7],
#   [2, 3],
#   [1, 8],
# ]

n, q = gets.split(' ').map(&:to_i)
s = gets.chomp
lr = readlines.map do |lr_|
  lr_.split(' ').map(&:to_i)
end

cs = [0]
s.chars.each_with_index do |s_, i|
  next if i == n - 1
  is_ac = s.chars[i] + s.chars[i + 1] == 'AC'
  cs[i] = cs[i - 1] + (is_ac ? 1 : 0)
end
cs[n - 1] = cs[n - 2]

lr.each do |l, r|
  if l == 1
    csl = 0
  else
    csl = cs[l - 2]
  end
  puts cs[r - 2] - csl
end
