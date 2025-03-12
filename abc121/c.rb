n, m = gets.split(' ').map(&:to_i)
ab = []
n.times do
  ab << gets.split(' ').map(&:to_i)
end

ab = ab.sort_by! { |a, b| a }
sum = 0
count = 0
ab.each do |a, b|
  if count + b < m
    sum += a * b
    count += b
  else
    sum += a * (m - count)
    break
  end
end
puts sum
