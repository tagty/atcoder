n = gets.to_i
(n / 4 + 1).times do |i|
  (n / 7 + 1).times do |j|
    if i * 4 + j * 7 == n
      puts "Yes"
      exit
    end
  end
end
puts "No"
