# https://projecteuler.net/problem=15

def rec_num_routes(width, height)
  return 1 if width.zero? || height.zero?
  num_routes(width - 1, height) + num_routes(width, height - 1)
end


def num_routes(width, height)
  cache = {}
  return cache[[width, height]] if cache.has_key?([width, height])
end

cache_results = {}
(0..20).each do |i|
  if cache_results.has_key? i
  cache_results[i] = num_routes(i, i)
end

puts "Solution is #{num_routes(ARGV[0].to_i, ARGV[0].to_i)}."
