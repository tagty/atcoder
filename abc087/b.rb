
# a = 2
# b = 2
# c = 2
# x = 100
a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

result = 0

(0..a).each do |a_|
  (0..b).each do |b_|
    (0..c).each do |c_|
      if 500 * a_ + 100 * b_ + 50 * c_ == x
        result += 1
      end
    end
  end
end

puts result
