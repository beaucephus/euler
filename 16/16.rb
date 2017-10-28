# https://projecteuler.net/problem=16

num = 2**1000

sum_digits = 0
num.to_s.each_char do |char|
  sum_digits += char.to_i
end

puts "Solution is #{sum_digits}."
