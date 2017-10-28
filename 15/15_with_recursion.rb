# https://projecteuler.net/problem=15

def sub_num_routes(width, height, cache)
  return 1 if width.zero? || height.zero?
  return cache[[width, height]] if cache.key?([width, height])
  return cache[[height, width]] if cache.key?([height, width])
  cache[[width, height]] = sub_num_routes(width - 1, height, cache) + sub_num_routes(width, height - 1, cache)
end

def num_routes(width, height)
  cache = {}
  sub_num_routes(width, height, cache)
end

puts "Solution for a 20x20 grid is #{num_routes(20, 20)}."
