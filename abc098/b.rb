n = gets.to_i
s = gets.chomp.chars

ans = 0
(1...n).each do |i|
  l = s[0...i]
  r = s[i...n]
  common = (l & r).size
  ans = [ans, common].max
end

puts ans
