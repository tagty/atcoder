n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }
dirs = [-1, 0, 1].product([-1, 0, 1])
ans = Array.new(n) { Array.new(m, 0) }

n.times do |i|
  m.times do |j|
    count = 0
    dirs.each do |di, dj|
      ni, nj = i + di, j + dj
      next if ni < 0 || ni >= n || nj < 0 || nj >= m
      count += 1 if s[ni][nj] == "#"
    end
    ans[i][j] = count
  end
end

puts ans.map { |row| row.join("") }
