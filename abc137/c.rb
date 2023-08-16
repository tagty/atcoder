
# n = 3
# s = [
#   'acornistnt',
#   'peanutbomb',
#   'constraint',
# ]
n = gets.to_i
s = readlines.map(&:chomp)

num = {}

s = s.each do |s_|
  s__ = s_.chars.sort.join
  if num[s__]
    num[s__] += 1
  else
    num[s__] = 1
  end
end

result = 0
num.each do |k, v|
  result += v * (v - 1) / 2
end

puts result
