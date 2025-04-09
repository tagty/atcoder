n = gets.to_i
found = false

(1..9).each do |i|
  if n % i == 0 && (1..9).include?(n / i)
    found = true
    break
  end
end

puts found ? "Yes" : "No"
