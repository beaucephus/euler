# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def chain_size(num)
  return 1 if num == 1
  return 1 + chain_size(num / 2) if (num % 2).zero?
  1 + chain_size((num * 3) + 1)
end

chain_num = 1
chain_size = 1
(1..999_999).each do |i|
  i_size = chain_size(i)
  if i_size > chain_size
    chain_num = i
    chain_size = i_size
  end
end

puts "Solution is #{chain_num} with chain size #{chain_size}."
