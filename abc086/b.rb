a, b = gets.split(' ')
s = a + b
i = s.to_i
sq = Math.sqrt i
j = sq.to_i ** 2
if i == j
  puts 'Yes'
else
  puts 'No'
end
