s = gets.chomp
t = gets.chomp
if s == t
  puts "Yes"
  exit
end
(s.size - 1).times do |i|
  s[i], s[i + 1] = s[i + 1], s[i]
  if s == t
    puts "Yes"
    exit
  end
  s[i], s[i + 1] = s[i + 1], s[i]
end
puts "No"
