
dxdy = [
  [1, 0],
  [0, 1],
  [-1, 0],
  [0, -1],
]

# h, w = 3, 3
# h, w = 10, 37
h, w = gets.split(' ').map(&:to_i)

# s = [
#   ['.', '.', '#'],
#   ['#', '.', '.'],
#   ['.', '.', '.'],
# ]

# s = [
#   '.....................................'.chars,
#   '...#...####...####..###...###...###..'.chars,
#   '..#.#..#...#.##....#...#.#...#.#...#.'.chars,
#   '..#.#..#...#.#.....#...#.#...#.#...#.'.chars,
#   '.#...#.#..##.#.....#...#.#.###.#.###.'.chars,
#   '.#####.####..#.....#...#..##....##...'.chars,
#   '.#...#.#...#.#.....#...#.#...#.#...#.'.chars,
#   '.#...#.#...#.##....#...#.#...#.#...#.'.chars,
#   '.#...#.####...####..###...###...###..'.chars,
#   '.....................................'.chars,
# ]

s = []
h.times do
  s << gets.chars
end

que = []
dist = []
h.times do
  row = []
  w.times do
    row << -1
  end
  dist << row
end

que.push([0, 0])
dist[0][0] = 0

while !que.empty?
  x, y = que.pop
  dxdy.each do |dx, dy|
    x2, y2 = x + dx, y + dy

    if x2 < 0 || x2 >= h || y2 < 0 || y2 >= w
      next
    end

    if s[x2][y2] == '#'
      next
    end

    if dist[x2][y2] != -1
      next
    end

    que.push([x2, y2])
    dist[x2][y2] = dist[x][y] + 1
  end
end

white = s.sum do |line|
  line.count('.')
end

if dist[h - 1][w - 1] != -1
  puts white - dist[h - 1][w - 1] - 1
else
  puts -1
end
