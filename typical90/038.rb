
# a, b = 1000000000000000000, 1
a, b = gets.split(' ').map(&:to_i)

if [a, b].min > 10 ** 18
  puts 'Large'
else
  if a.lcm(b) > 10 ** 18
    puts 'Large'
  else
    puts a.lcm(b)
  end
end
