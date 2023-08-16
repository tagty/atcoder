
# s = 'FisHDoGCaTAAAaAAbCAC'
s = gets.chomp

words = []

i = 0
while i < s.length
  j = i + 1

  while j < s.length && s[j].match?(/[a-z]/)
    j += 1
  end

  words << s[i..j]
  i = j + 1
end

puts words.sort_by(&:downcase).join
