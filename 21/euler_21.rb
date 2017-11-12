# https://projecteuler.net/problem=21

def d(n)
  divisors = []
  (1..(n / 2)).each do |i|
    divisors << i if (n % i).zero?
  end
  divisors.sum
end

def amicable?(n)
  n2 = d(n)
  n != n2 && d(n2) == n
end

sum = 0
(1..9999).each do |n|
  sum += n if amicable?(n)
end

puts sum
