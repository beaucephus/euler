# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def prime_factor(num)
  (1..(num / 2)).each do |i|
    next unless (num % i).zero?
    candidate = num / i
    puts "Attempt for candidate #{candidate}."
    return candidate if Prime.prime?(candidate)
  end
end

puts prime_factor 600_851_475_143
