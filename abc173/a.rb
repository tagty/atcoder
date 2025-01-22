n = gets.to_i

a = 1000 - (n % 1000)

if a == 1000
  puts 0
else
  puts a
end
