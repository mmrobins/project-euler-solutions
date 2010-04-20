require 'factoring'
require 'pp'
divisors = []
(1..500).each do |d|
  factors = d.factors
  diff = factors - divisors
  divisors += diff
end
pp divisors
