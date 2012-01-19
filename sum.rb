class Array
  def sum
    inject {|sum, n| sum += n} || 0
  end
end
