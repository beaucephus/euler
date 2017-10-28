# https://projecteuler.net/problem=17

LOOKUP = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

TENS_LOOKUP = {
  2 => 'twenty',
  3 => 'thirty',
  4 => 'forty',
  5 => 'fifty',
  6 => 'sixty',
  7 => 'seventy',
  8 => 'eighty',
  9 => 'ninety'
}

def to_words(num)
  num_w = ''
  num_s = num.to_s
  (0..(num_s.length - 1)).each do |i|
    sub_s = num_s[i, num_s.length]
    sub_i = sub_s.to_i
    power = num_s.length - i - 1
    next if num_s[i] == '0'
    case power
    when 0
      num_w += LOOKUP[num_s[i].to_i]
    when 1
      if LOOKUP[sub_i].nil?
        num_w += TENS_LOOKUP[num_s[i].to_i] + ' '
      else
        num_w += LOOKUP[sub_i] + ' '
        return num_w
      end
    when 2
      num_w += LOOKUP[num_s[i].to_i] + ' hundred '
      num_w += 'and ' if num_s[i + 1, num_s.length].to_i != 0 # 'and'
    when 3
      num_w += LOOKUP[num_s[i].to_i] + ' thousand '
    end
  end
  num_w
end

sum = 0
(1..1000).each do |num|
  sum += to_words(num).delete(' ').length
  puts to_words(num)
end

puts "solution is #{sum}."
