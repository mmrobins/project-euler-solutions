require 'primality_testing'
require 'factoring'
number_to_factor = 600851475143
sqrt = Math.sqrt(number_to_factor)
sqrt.round.downto(1) do |n|
  break n if number_to_factor.is_factor?(n) && n.prime_naive?
end
