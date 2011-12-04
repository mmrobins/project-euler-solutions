require 'divisors'
require 'sum'

amicable_numbers = []
(2..9999).each do |n|
  sum_divisors = n.proper_divisors.sum
  sum_divisors2 = sum_divisors.proper_divisors.sum
  if sum_divisors2 == n && sum_divisors != sum_divisors2
    amicable_numbers += [sum_divisors, sum_divisors2]
  end
end

puts amicable_numbers.uniq.sum
