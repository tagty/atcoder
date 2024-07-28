
# @n = 3
# ab = [
#   [1, 2],
#   [2, 3],
# ]

@n = gets.to_i
ab = []
(@n - 1).times do
  ab << gets.split(' ').map(&:to_i)
end

@g = Array.new(@n) { [] }
ab.each do |a, b|
  a, b = a - 1, b - 1
  @g[a] << b
  @g[b] << a
end

def dfs(s)
  dist = [-1] * @n
  dist[s] = 0
  st = [s]
  while !st.empty?
    v = st.pop
    @g[v].each do |nv|
      if dist[nv] == -1
        st << nv
        dist[nv] = dist[v] + 1
      end
    end
  end
  return dist
end

dist0 = dfs(0)
mv = dist0.each_with_index.max_by { |v, _i| v }[1]
distmv = dfs(mv)
puts(distmv.max + 1)
