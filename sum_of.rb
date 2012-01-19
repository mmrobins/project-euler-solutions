class Fixnum
  @@sum_of_results = {}
  def sum_of?(numbers)
    useful_numbers = numbers.select {|n| n < self}
    return false if useful_numbers.empty?
    useful_numbers.each do |n|
      result = (self - n).sum_of_helper(useful_numbers)
      return result + [n] if result
    end
    false
  end

  def sum_of_helper(numbers)
    return [self] if numbers.include?(self)
    useful_numbers = numbers.select {|n| n < self}
    return false if useful_numbers.empty?
    useful_numbers.each do |n|
      cached_result = @@sum_of_results[[(self - n), useful_numbers]]
      result = defined?(cached_result) ? cached_result : (self - n).sum_of_helper(useful_numbers)
      @@sum_of_results[[(self - n), useful_numbers]] = result
      return result + [n] if result
    end
    false
  end
end
