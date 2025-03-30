s = gets.chomp
ans = 0
s.size.times do
  s.chop!
  if s.size % 2 == 0
    if s[0..(s.size / 2 - 1)] == s[(s.size / 2)..-1]
      ans = s.size
      break
    end
  end
end
puts ans
