num = (1..100).inject(:*)

num_s = num.to_s

sum = 0
num_s.each_char do |char|
  sum += char.to_i
end

puts sum
