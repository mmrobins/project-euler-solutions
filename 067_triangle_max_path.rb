arrays = File.open('triangle.txt').readlines.map do |l|
  l.chomp.split.map(&:to_i)
end

class Triangle
  attr_accessor :triangle
  def initialize(array)
    @triangle = array.dup
  end
  def to_s
    @triangle
  end
  def max_total
    t = @triangle.dup.reverse
    t.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        next unless row[j + 1]
        next unless t[i + 1][j]
        t[i + 1][j] = t[i + 1][j] + [cell, row[j + 1]].max
      end
    end
    t.last.last
  end
end

puts Triangle.new(arrays).max_total
