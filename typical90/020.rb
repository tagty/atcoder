
# a, b, c = '8650415919381337932 17 13'.split(' ').map(&:to_i)
a, b, c = gets.split(' ').map(&:to_i)

if a < c ** b
  puts 'Yes'
else
  puts 'No'
end
