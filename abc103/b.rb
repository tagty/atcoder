s = gets.chomp
t = gets.chomp
s.size.times do
  s = s[-1] + s[0...-1]
  if s == t
    puts "Yes"
    exit
  end
end
puts "No"
