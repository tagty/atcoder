n = gets.to_i

i = 1
sum = 0

loop do
  sum += i
  if sum >= n
    puts i
    return
  end
  i += 1
end
