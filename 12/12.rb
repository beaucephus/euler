# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?

def divisors(num)
  divisors = [1]
  quotients = [num]
  divisor = 2
  until divisor * divisor > num
    quotient = num / divisor
    if (num % divisor).zero?
      divisors << divisor
      quotients << quotient
    end
    divisor += 1
  end
  divisors | quotients
end

tri_num = 1
i = 2
until (x = divisors(tri_num)).size > 500
  tri_num += i
  i += 1
end

puts "Solution is #{tri_num}."
puts "Its divisors are #{x.sort}."