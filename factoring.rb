class Integer
  def is_factor?(n)
    self % n == 0
  end
  def factors
    factors = []
    (2..(self/2)).each do |m|
      factors << m if self.is_factor?(m)
    end
    factors = factors + [1, self]
  end
end
