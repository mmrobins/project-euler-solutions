class Fixnum
  def proper_divisors
    (1..(self/2)).select {|n| self % n == 0}
  end
  def abundant?
    self.proper_divisors.inject(0) {|sum, n| sum += n} > self
  end
end
