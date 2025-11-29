h, w = gets.split.map(&:to_i)

c = Array.new(10) { gets.split.map(&:to_i) }
a = Array.new(h)  { gets.split.map(&:to_i) }

# Floyd-Warshall
10.times do |k|
  10.times do |i|
    10.times do |j|
      c[i][j] = [c[i][j], c[i][k] + c[k][j]].min
    end
  end
end

ans = a.sum do |row|
  row.sum do |v|
    v == -1 ? 0 : c[v][1]
  end
end

puts ans
