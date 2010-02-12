class Fixnum
  def prime_naive?
    sqrt = Math.sqrt(self)
    (2..sqrt).select {|n| (n % 2 != 0 && n % 3 != 0) || n == 2 || n == 3}.each do |divisor|
      return false if self % divisor == 0
    end
      return true
  end
  def primes_less_than
    numbers_to_test = (2..self).to_a
    primes = []
    i = 1
    while i < Math.sqrt(self)
      i = numbers_to_test.shift
      primes << i
      numbers_to_test = numbers_to_test.select {|n| n % i != 0}
    end
    primes + numbers_to_test
  end
end
