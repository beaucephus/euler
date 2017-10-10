# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def sum_of_primes_below(n)
  sum = 0
  require 'prime'
  Prime.each(n) do |prime|
    sum += prime
  end

  sum
end

n = 2_000_000

puts "Solution #{sum_of_primes_below n}."
