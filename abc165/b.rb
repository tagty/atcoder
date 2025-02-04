x = gets.to_i

i = 1
sum = 100

loop do
  sum = (sum + sum / 100).to_i
  if sum >= x
    puts i
    return
  end
  i += 1
end
