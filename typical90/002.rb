
# n = 10
n = gets.to_i

def is_valid(s)
  score = 0
  s.each do |c|
    if c == '('
      score += 1
    else
      score -= 1
    end
    if score < 0
      return false
    end
  end
  score == 0
end

['(', ')'].repeated_permutation(n).each do |s|
  if is_valid(s)
    puts s.join('')
  end
end
