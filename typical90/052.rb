
# n = 2
# a = [
#   '1 2 3 5 7 11'.split(' ').map(&:to_i),
#   '4 6 8 9 10 12'.split(' ').map(&:to_i),
# ]

# n = 1
# a = [
#   '11 13 17 19 23 29'.split(' ').map(&:to_i),
# ]

# n = 7
# a = [
#   '19 23 51 59 91 99'.split(' ').map(&:to_i),
#   '15 45 56 65 69 94'.split(' ').map(&:to_i),
#   '7 11 16 34 59 95'.split(' ').map(&:to_i),
#   '27 30 40 43 83 85'.split(' ').map(&:to_i),
#   '19 23 25 27 45 99'.split(' ').map(&:to_i),
#   '27 48 52 53 60 81'.split(' ').map(&:to_i),
#   '21 36 49 72 82 84'.split(' ').map(&:to_i),
# ]

n = gets.to_i
a = []
n.times do
  a << gets.split(' ').map(&:to_i)
end

ans = 0
a.each do |row|
  if ans == 0
    ans += row.sum
  else
    ans *= row.sum
  end
end
puts ans % (10 ** 9 + 7)
