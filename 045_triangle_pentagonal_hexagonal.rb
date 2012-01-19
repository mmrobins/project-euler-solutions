# I wasn't expect this to be this easy or fast
# I'm sure there's a better less brute force way
triangle = (1..1_000_000).map {|n| (n * (n + 1)) / 2}
pentagonal = (1..1_000_000).map {|n| (n * (3*n -1)) / 2}
hexagonal = (1..1_000_000).map {|n| n * (2 * n - 1)}

puts triangle & pentagonal & hexagonal
