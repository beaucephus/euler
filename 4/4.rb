# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(x)
  raise ArgumentError, 'Arg must respond to length.' unless x.respond_to?('length')
  (0..(x.length)).each do |i|
    return true if i > (x.length / 2)
    break unless x[i] == x[x.length - i - 1]
  end

  false
end

candidate = 0

999.downto(111).each do |num1|
  999.downto(111).each do |num2|
    product = num1 * num2
    candidate = product if palindrome?(product.to_s) && (product > candidate)
  end
end

puts candidate
