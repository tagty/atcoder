a, b = gets.split(' ').map(&:to_i)
s = gets.chomp

puts s[a] == '-' && s[0...a].match?(/\d+/) && s[a+1...a+b+1].match?(/\d+/) ? 'Yes' : 'No'
