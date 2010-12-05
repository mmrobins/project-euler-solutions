class Integer
  def factorial
    return 1 if self == 0
    (1..self).inject(:*)
  end
end

class Integer
  def to_list
    self.to_s.split(//).map {|x| x.to_i}
  end
end

# 9 factorial has 6 digits, 362880, and 362880 * 6 is a 7 digit number
# 2177280 is the highest number that could possibly have this property that
# the sum of the factorial of its digits is itself
# really this upper bound probably could be tested a lot lower with some better rationalization
# since 999999 isn't even close to 2177280, but it doesn't take too long to test to that bound
upper_bound = 9.factorial * 6
weird_factorial_numbers = []
# per the problem we're not going to include 1 and 2
(3..upper_bound).each do |d|
  weird_factorial_numbers << d if d == d.to_list.inject(0) {|sum, n| sum + n.factorial}
end
puts weird_factorial_numbers.inject(0) {|sum, n| sum + n}
