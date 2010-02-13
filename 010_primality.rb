require "primality_testing.rb"
2_000_000.primes_less_than.inject {|sum, n| sum += n}
