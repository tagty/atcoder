
# q = 6
q = gets.to_i
# tx = [
#   [1, 2],
#   [1, 1],
#   [2, 3],
#   [3, 1],
#   [3, 2],
#   [3, 3],
# ]
tx = []
q.times do
  tx << gets.split(' ').map(&:to_i)
end

a = []
tx.each do |t, x|
  if t == 1
    a.unshift(x)
  elsif t == 2
    a.push(x)
  else
    puts a[x - 1]
  end
end
