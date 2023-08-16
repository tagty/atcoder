
dx = [1, 0, -1, 0, 1, -1, -1, 1]
dy = [0, 1, 0, -1, 1, 1, -1, -1]

# h = 3
# w = 6
# s = [
#   '......',
#   '.#.#..',
#   '......',
# ]
h, w = gets.split(' ').map(&:to_i)
s = readlines.map(&:chomp)

result = s.map do |row|
  columns = row.split('')
  columns.map do |column|
    if column == '.'
      0
    else
      '#'
    end
  end
end

result.each_with_index do |row, i|
  row.each_with_index do |column, j|
    if column == '#'
      next
    end

    dx.zip(dy).each do |dx_, dy_|
      ni, nj = i + dx_, j + dy_

      if ni < 0 || ni >= h || nj < 0 || nj >= w
        next
      end

      if result[ni][nj] == '#'
        result[i][j] += 1
      end
    end
  end
end

result = result.map do |row|
  row.join('')
end.join("\n")

puts result
