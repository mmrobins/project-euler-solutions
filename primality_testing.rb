class Integer
  @@primes = []

  def prime?
    return true if @@primes.include? self
    self.prime_naive?
  end

  # way too slow
  def prime_naive?
    sqrt = Math.sqrt(self)
    (2..sqrt).select {|n| (n % 2 != 0 && n % 3 != 0) || n == 2 || n == 3}.each do |divisor|
      return false if self % divisor == 0
    end
    @@primes = (@@primes << self).uniq
    return true
  end

  # Sieve of Eratosthenes
  def primes_less_than
    numbers_to_test = (3..self).step(2).map {|x| x}
    primes = []
    i = 1
    # only need to test to the sqrt of the number since nothing larger than the sqrt could possible divide
    while i < Math.sqrt(self)
      i = numbers_to_test.shift
      primes << i
      numbers_to_test = numbers_to_test.select {|n| n % i != 0}
    end
    # the rest of the numbers_to_test are the primes larger than sqrt but smaller than self
    primes = [2] + primes + numbers_to_test
    @@primes = (@@primes + primes).uniq
    primes
  end

  def self.primes
    @@primes
  end

  def to_list
    self.to_s.split(//).map {|x| x.to_i}
  end
end
