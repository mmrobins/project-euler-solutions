@grid_size = ARGV.first.to_i

# slow way is to actually walk the route
#
# @count = 1
#
# def walk(i, j)
#   @count += 1
#   walk(i + 1, j) if i < @grid_size - 1
#   walk(i, j + 1) if j < @grid_size - 1
# end
#
# walk(0, 0)
#
# puts @count

# but much faster is to use n choose k

# factorial doesn't seem to be in stdlib
# suppose there's a math library out there somewhere for this
# and choose
class Fixnum
  def factorial
    downto(1).inject(:*)
  end

  def choose(k)
    self.factorial / (k.factorial * (self - k).factorial)
  end
end

# On an NxN grid you go 2*N blocks and have to make N choices
# That's poorly explained, but oh well
puts (2 * @grid_size).choose(@grid_size)
