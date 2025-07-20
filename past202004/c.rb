n = gets.to_i
s = Array.new(n) { gets.chomp.chars }
s.reverse!
s.each_with_index do |row, i|
  next if i == 0
  row.each_with_index do |char, j|
    next if char == "."
    [-1, 0, 1].each do |dj|
      prev_j = j + dj
      if prev_j.between?(0, row.size - 1) && s[i - 1][prev_j] == "X"
        row[j] = "X"
        break
      end
    end
  end
end
s.reverse!
puts s.map(&:join).join("\n")
