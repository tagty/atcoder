def bingo?(board)
  # 横のチェック
  return true if board.any? { |row| row.sum == 0 }
  # 縦のチェック
  return true if board.transpose.any? { |col| col.sum == 0 }
  # 斜めのチェック
  return true if board[0][0] + board[1][1] + board[2][2] == 0
  return true if board[0][2] + board[1][1] + board[2][0] == 0
  false
end

# 入力処理
board = 3.times.map { gets.split.map(&:to_i) }
n = gets.to_i
numbers = n.times.map { gets.to_i }

# 番号をマーク
numbers.each do |num|
  board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      board[i][j] = 0 if cell == num
    end
  end
end

# 結果出力
puts bingo?(board) ? "Yes" : "No"
