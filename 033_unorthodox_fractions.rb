require 'digits'
require 'rational'

fractions = []

(10..99).each do |i|
  ((i+1)..99).each do |j|
    v = i.to_f / j

    i1 = i.digits.first
    i2 = i.digits.last
    j1 = j.digits.first
    j2 = j.digits.last

    v1 = i1.to_f / j2

    fractions << [i,j] if v1 == v && i2 == j1
  end
end

numerator = fractions.inject(1) {|product, frac| frac[0] * product }
denominator = fractions.inject(1) {|product, frac| frac[1] * product }

while (gcd = numerator.gcd(denominator)) != 1
  numerator = numerator / gcd
  denominator = denominator / gcd
end

puts denominator
