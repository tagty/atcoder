
# n = 3
# a = '10 13 93'.split(' ').map(&:to_i)
# b = '5 27 35'.split(' ').map(&:to_i)
# c = '55 28 52'.split(' ').map(&:to_i)

n = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)
c = gets.split(' ').map(&:to_i)

num_a = Array.new(46, 0)
num_b = Array.new(46, 0)
num_c = Array.new(46, 0)

n.times do |i|
  tmp_a = a[i] % 46
  tmp_b = b[i] % 46
  tmp_c = c[i] % 46

  num_a[tmp_a] += 1
  num_b[tmp_b] += 1
  num_c[tmp_c] += 1
end

ans = 0
46.times do |a_|
  46.times do |b_|
    46.times do |c_|
      if (a_ + b_ + c_) % 46 == 0
        ans += num_a[a_] * num_b[b_] * num_c[c_]
      end
    end
  end
end

puts ans
