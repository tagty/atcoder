q = gets.to_i

ans = 0
coins = (1..10).map { |i| (1..i).inject(:*) }.reverse

coins.each do |coin|
  while q >= coin
    q -= coin
    ans += 1
  end
end

puts ans
