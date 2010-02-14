# I'm counting 4 diagonals each with the first term 1
# to be a square matrix with a center of 1 it must always be an odd number of rows and columns
# 1, 2, 3, 4, 5 terms for
# 1, 3, 5, 7, 9 sized square
num_terms_per_diagonal = (1001 + 1) / 2

terms = [1]

# distances from 1 to first diagonal term in each direction
[2, 4, 6, 8].each do |distance|
  next_diagonal = 1 + distance
  terms << next_diagonal
  # -2 because we've already put 1 and the next term into the list
  (num_terms_per_diagonal - 2).times do
    distance += 8
    next_diagonal = next_diagonal + distance
    terms << next_diagonal
  end
end

puts terms.inject {|sum, n| sum += n}
