h, w = gets.split.map(&:to_i)
a = Array.new(h) { gets.chomp.chars }

# 行をすべて"."のものを除外
a = a.reject { |row| row.all? { |cell| cell == "." } }

# 列をすべて"."のものを除外
cols_to_keep = (0...w).select { |j| a.any? { |row| row[j] != "." } }

a.each do |row|
  puts cols_to_keep.map { |j| row[j] }.join
end
