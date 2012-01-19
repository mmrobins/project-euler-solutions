require 'primality_testing'
primes = 45.primes_less_than
longest_streak = 1
longest_streak_starting_prime = 2
longest_streak_sum = 2
puts primes.inspect

primes.each_with_index do |p, i|
  count = 1
  sum = p
  while primes[i + count] && primes.include?(sum + primes[i + count])
    count += 1
    sum += primes[i + count]
  end
  if count > longest_streak
    longest_streak = count
    longest_streak_starting_prime = p
    longest_streak_sum = sum
  end
end

puts longest_streak_sum
