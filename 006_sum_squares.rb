square_of_sums = (1..100).inject {|sum, n| sum += n}**2
sum_of_squares = (1..100).inject {|sum, n| sum += n**2}
square_of_sums - sum_of_squares
