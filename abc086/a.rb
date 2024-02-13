
# a, b = 3, 4
a, b = gets.split(' ').map(&:to_i)

ab = a * b

if ab.odd?
  puts 'Odd'
else
  puts 'Even'
end
