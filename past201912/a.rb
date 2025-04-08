s = gets.chomp
puts s.match?(/\D/) ? "error" : s.to_i * 2
