# https://projecteuler.net/problem=23

def abundant?(n)
  divisors = []
  (1..(n / 2)).each do |i|
    divisors << i if (n % i).zero?
  end
  divisors.sum > n
end

$abundant_nums = []
(1..28_123).each do |i|
  $abundant_nums << i if abundant?(i)
end

def sum_of_abundants?(n)
  $abundant_nums.each do |abundant_num|
    return true if $abundant_nums.include?(n - abundant_num)
  end
  false
end

sum = 0
(1..28_123).each do |i|
  sum += i unless sum_of_abundants?(i)
end

puts sum
