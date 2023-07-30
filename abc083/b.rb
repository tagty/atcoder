
def calc_sum_digits(n)
  sum_digit = 0
  while n > 0
    sum_digit += n % 10
    n /= 10
  end
  sum_digit
end

input = "13 2 4"
# input = gets
n, a, b = input.split(" ").map(&:to_i)

result = 0

(1..n).each do |i|
  sum_digit = calc_sum_digits(i)
  if a <= sum_digit && sum_digit <= b
    result += i
  end
end

puts result
