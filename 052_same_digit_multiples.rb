#It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
#
#Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

require 'pp'

class Fixnum
  def to_digits
    self.to_s.split(//).map {|d| d.to_i}
  end
end

i = 125874
while i >= 1
  a = i.to_digits
  break if ( \
    i.to_digits \
    & (i*2).to_digits \
    & (i*3).to_digits \
    & (i*4).to_digits \
    & (i*5).to_digits \
    & (i*6).to_digits \
  ).size == a.size
  break if i > 1_000_000
  i += 1
end

puts i
