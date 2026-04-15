n = gets.to_i
segments = (n - 1).times.map { gets.split.map(&:to_i) }
(0..(n - 1)).each do |i|
  t = 0
  segments[i..-1].each do |c, s, f|
    depart = if t <= s
               s
             else
               ((t + f - 1) / f) * f
             end
    t = depart + c
  end
  puts t
end
