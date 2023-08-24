
# n = 2
# @txy = [
#   [3, 1, 2],
#   [6, 1, 1],
# ]

n = gets.to_i
@txy = readlines.map do |txy|
  txy.split(' ').map(&:to_i)
end


def solve
  pt, px, py = 0, 0, 0

  @txy.each do |t, x, y|
    t_, x_ , y_ = t - pt, (x - px).abs, (y - py).abs

    if t_ < x_ + y_
      return false
    end

    if t_ % 2 != (x_ + y_) % 2
      return false
    end

    pt, px, py = t_, x_ , y_
  end

  true
end

if solve
  puts 'Yes'
else
  puts 'No'
end
