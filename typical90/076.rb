
require 'set'

# n = 10
# a = '1 1 1 1 1 1 1 1 1 1'.split(' ').map(&:to_i)

n = gets.to_i
a = gets.split(' ').map(&:to_i)


if a.sum % 10 != 0
  puts 'No'
  return
end

accum = [0]
a.each do |a_|
  accum << accum[-1] + a_
end
length = accum[-1]
accum = Set.new(accum)

accum.each do |x|
  accum_ = (x + length / 10) % length
  if accum.include?(accum_)
    puts 'Yes'
    return
  end
end

puts 'No'
