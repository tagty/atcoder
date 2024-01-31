
# @n, @m, q = 3, 4, 3
# @n, @m, q = '5 2 20'.split(' ').map(&:to_i)
@n, @m, q = gets.split(' ').map(&:to_i)

# @a = [1, 1, 2].map { |i| i - 1 }
# @b = [3, 2, 3].map { |i| i - 1 }
# @c = [3, 2, 2]
# @d = [100, 10, 10]

# ipts = [
#   '2 3 1 84578',
#   '1 4 0 7182',
#   '2 4 1 25494',
#   '1 5 0 81831',
#   '1 3 1 14734',
#   '1 4 1 39268',
#   '1 5 1 594',
#   '3 5 0 27228',
#   '1 2 0 95',
#   '2 3 0 56166',
#   '2 5 0 87980',
#   '4 5 0 56559',
#   '2 4 0 46228',
#   '3 5 1 61412',
#   '1 3 0 10258',
#   '3 4 0 77949',
#   '4 5 1 97604',
#   '3 4 1 20460',
#   '1 2 1 28731',
#   '2 5 1 46448',
# ]
# 451476

@a = []
@b = []
@c = []
@d = []
# ipts.each_with_index do |ipt, i|
#   @a[i], @b[i], @c[i], @d[i] = ipt.split(' ').map(&:to_i)
#   @a[i] -= 1
#   @b[i] -= 1
# end
q.times do |i|
  @a[i], @b[i], @c[i], @d[i] = gets.split(' ').map(&:to_i)
  @a[i] -= 1
  @b[i] -= 1
end

def calc_score(_a)
  score = 0
  @a.zip(@b, @c, @d).each do |ai, bi, ci, di|
    if _a[bi] - _a[ai] == ci
      score += di
    end
  end
  score
end

def rec(_a)
  if _a.length == @n
    return calc_score(_a)
  end
  result = 0
  if _a.empty?
    prev_last = 1
  else
    prev_last = _a[-1]
  end
  (prev_last..@m).each do |add|
    _a.append(add)
    result = [result, rec(_a)].max
    _a.pop
  end
  result
end

_a = []
puts rec(_a)
