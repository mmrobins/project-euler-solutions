class Array
  def sum
    inject {|sum, n| sum += n}
  end
end
