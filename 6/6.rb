# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(n)
  sum = 0
  (1..n).each do |i|
    sum += i * i
  end

  sum
end

def square_of_sums(n)
  sum = 0
  (1..n).each do |i|
    sum += i
  end

  sum * sum
end

num = 100

puts square_of_sums(num) - sum_of_squares(num)
