n, m = gets.split.map(&:to_i)
py = []
hash = {}
m.times do |i|
  py << gets.split.map(&:to_i)
  hash[py[i][0]] ||= []
  hash[py[i][0]] << py[i][1]
end

hash.each do |k, v|
  v.sort!
end

py.each do |_p, y|
  position = hash[_p].index(y) + 1
  puts "#{_p.to_s.rjust(6, '0')}#{position.to_s.rjust(6, '0')}"
end
