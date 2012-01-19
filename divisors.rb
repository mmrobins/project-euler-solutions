require 'mathn'
require 'benchmark'
require 'sum'

class Prime
  def each
    @primes.each do |i|
      yield i
    end
    loop do
      yield succ
    end
  end
end
class Integer
  @@ps = Prime.new
  def prime_division_cache
    value = self
    pv = []
    for prime in @@ps
      count = 0
      while (value1, mod = value.divmod(prime); mod) == 0
        value = value1
        count += 1
      end
      if count != 0
        pv.push [prime, count]
      end
      break if prime * prime  >= value
    end
    if value > 1
      pv.push [value, 1]
    end
    return pv
  end

  def divisors
    pd = prime_division_cache
    divisors = [1]
    pd.each do |p|
      p_num = p.first
      p_times = p.last
      (p_times).times do
        divisors += divisors.map {|i| i * p_num}
      end
    end
    divisors.sort.uniq
  end

  def proper_divisors
    divisors[0..-2]
  end

  def abundant?
    self.proper_divisors.sum > self
  end
end

#i,acc = 2,1
#puts Benchmark.measure {
#  while acc.divisors.size < 500
#    acc+=i
#    i+=1
#  end
#}
#puts "answer #{acc}"
