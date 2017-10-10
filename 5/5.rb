# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def pass?(num)
  (2..20).each do |factor|
    return false unless (num % factor).zero?
  end
  true
end

candidate = 20 * 19

loop do
  puts "Attempt #{candidate}."
  break if pass? candidate
  candidate += 20
end

puts "Solution #{candidate}."
