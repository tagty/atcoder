
# n = 3
# a = [2, 7, 4]
n = gets.to_i
a = gets.split(' ').map(&:to_i)

a.sort!.reverse!

result = 0

a.each_with_index do |b, i|
  if i % 2 == 0
    result += b
  else
    result -= b
  end
end

puts result
