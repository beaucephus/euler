# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0

(3..999).each do |i|
  if (i % 3).zero?
    sum += i
    next
  end
  sum += i if (i % 5).zero?
end

puts sum
