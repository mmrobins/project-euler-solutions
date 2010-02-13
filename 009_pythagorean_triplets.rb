triplets = []
(1..900).each do |n|
  (1..900).each do |m|
    c_squared = n**2 + m**2
    c = Math.sqrt(c_squared)
    triplets << [n, m, c] if c.to_i == c
  end
end

thou_triplet = triplets.detect {|triplet| triplet[0] + triplet[1] + triplet[2] == 1000}
thou_triplet[0] + thou_triplet[1] + thou_triplet[2]
