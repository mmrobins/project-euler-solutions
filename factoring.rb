class Integer
  @@factors = Hash.new { |hash, key| hash[key] = Array.new }
  def is_factor?(n)
    self % n == 0
  end

  def factors
    return less_naive_factors
  end

  def less_naive_factors
    return @@factors[self] unless @@factors[self].empty?
    factors = []
    top = self

    (2..(self/2)).each do |n|
      break if n > top
      if self.is_factor?(n)
        factors << n
        top = self / n
        factors << top
      end
    end
    @@factors[self] = (factors + [1, self]).sort.uniq
  end

  def naive_factors
    factors = []
    (2..(self/2)).each do |n|
      factors << n if self.is_factor?(n)
    end
    factors = (factors + [1, self]).sort
  end

  def prime_factors

  end
end
