
# s = 'AtCoder'
# s = 'ACoder'
# s = 'AtCoCo'
# s = 'Atcoder'
# s = 'AcycliC'
# s = 'AtCOder'
# s = 'AtCodeR'
# s = 'AcycliC'
s = gets.chomp

def is_ac?(s)
  return false if s[0] != 'A'
  return false if s[2 .. -2].count('C') != 1
  return false if s.scan(/[A-Z]/).length != 2
  true
end

puts is_ac?(s) ? 'AC' : 'WA'
