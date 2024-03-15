
# n = 42
n = gets.to_i

cnt = 0
root = Math.sqrt(n).to_i
(2..(root + 1)).each do |i|
  while (n % i) == 0 do
    cnt += 1
    n /= i
  end
end

if n != 1
  cnt += 1
end

puts Math.log2(cnt).ceil
