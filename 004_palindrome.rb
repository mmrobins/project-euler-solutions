class Integer
  def is_palindrome?
    self.to_s == self.to_s.reverse
  end
end

nums = []

999.downto(900) do |n|
  999.downto(900) do |m|
    nums << m * n
  end
end

nums = nums.sort.reverse

nums.each do |n|
  break n if n.is_palindrome?
end
