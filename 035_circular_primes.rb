require 'primality_testing'

class Integer
  #crap i misread the question at first and thought i needed permutations instead of rotations
  def permutations
    self.to_list.permutations.map(&:to_i)
  end

  def contains_even_digit?
    self.to_list.any? {|x| x % 2 == 0}
  end

  def rotations
    self.to_list.rotations.map(&:to_i)
  end
end

class Array
  def rotations
    rots = [self]
    self.each_index do |i|
      next if i == 0
      rots << self[i..(self.size - 1)] + self[0..(i-1)]
    end
    rots
  end

  # I may need this later anyway, but will probably want something faster
  def permutations
    return [self] if self.size == 1
    perms = []
    array = self.dup
    e = array.shift
    array.permutations.each do |a|
      a.each_index do |i|
        perms << a.dup.insert(i,e)
      end
      perms << a.dup + [e]
    end
    perms
  end

  def to_i
    self.join.to_i
  end
end

primes = 1_000_000.primes_less_than
circular_primes = [2] + primes.reject(&:contains_even_digit?).select { |prime| prime.rotations.all? { |x| primes.include? x } }
puts circular_primes.size
