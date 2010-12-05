require 'pp'
require 'primality_testing'
require 'set'

class Array
  def to_i
    self.join.to_i
  end
end

module Enumerable
  def dups
    inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

permuted_primes_with_at_least_three_prime_permutations = []
9999.primes_less_than.select {|n| n > 999}.each do |n|
  permuted_primes = n.to_list.permutation(4).map(&:to_i).select {|n| n.prime? && n > 999}.uniq
  permuted_primes_with_at_least_three_prime_permutations << permuted_primes if permuted_primes.size >= 3
end

differences = []
permuted_primes_with_at_least_three_prime_permutations.map(&:to_set).uniq.each do |p_set|
  p_set.each do |p|
    p_set_copy = p_set.dup.delete(p).to_a
    #pp p_set_copy
    diffs = p_set_copy.map {|n| n - p}
    #pp "p #{p} p_set_copy #{p_set_copy.to_a} diffs #{diffs}"
    differences << p_set unless diffs.dups.empty?
  end
end

pp 'differences'
pp differences
