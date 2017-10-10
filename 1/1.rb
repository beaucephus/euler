sum = 0

(3..999).each do |i|
  if (i % 3).zero?
    sum += i
    next
  end
  sum += i if (i % 5).zero?
end

puts sum
