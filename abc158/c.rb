a, b = gets.split(' ').map(&:to_i)

(1..1000).each do |i|
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    puts i
    exit
  end
end

puts -1
