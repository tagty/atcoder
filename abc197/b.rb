h, w, x, y = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
a, b = x - 1, y - 1

ans = 1
[[ -1, 0 ], [ 1, 0 ], [ 0, -1 ], [ 0, 1 ]].each do |dx, dy|
  na, nb = a, b
  loop do
    na += dx
    nb += dy
    break unless na.between?(0, h - 1) && nb.between?(0, w - 1) && s[na][nb] == "."
    ans += 1
  end
end

puts ans
