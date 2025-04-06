s = gets.chomp
t = gets.chomp
s = s.chars.sort.join
t = t.chars.sort.reverse.join
if s < t
  puts "Yes"
else
  puts "No"
end
