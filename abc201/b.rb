n = gets.to_i

hash = {}
n.times do
  s, t = gets.split(' ')
  hash[s] = t.to_i
end

hash = hash.sort_by { |k, v| v }.reverse.to_h
puts hash.keys[1]
