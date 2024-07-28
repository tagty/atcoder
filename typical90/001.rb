
# @n, @l = 3, 34
# @k = 1
# @a = [8, 13, 26]
@n, @l = gets.split(' ').map(&:to_i)
@k = gets.to_i
@a = gets.split(' ').map(&:to_i)

def check(x)
  num = 0
  pre = 0
  @n.times do |i|
    if @a[i] - pre >= x
      num += 1
      pre = @a[i]
    end
  end
  if @l - pre >= x
    num += 1
  end
  num >= @k + 1
end

left, right = -1, @l + 1
while right - left > 1
  mid = (left + right) / 2
  if check(mid)
    left = mid
  else
    right = mid
  end
end

puts left
