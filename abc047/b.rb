w, h, n = gets.split.map(&:to_i)

lx, rx = 0, w
ly, ry = 0, h

n.times do
  x, y, a = gets.split.map(&:to_i)

  case a
  when 1 then lx = [lx, x].max
  when 2 then rx = [rx, x].min
  when 3 then ly = [ly, y].max
  when 4 then ry = [ry, y].min
  end
end

width  = [rx - lx, 0].max
height = [ry - ly, 0].max

puts width * height
