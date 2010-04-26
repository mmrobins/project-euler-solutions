require 'pp'
def perms(*a)
  return [a] if a.size == 1
  p = []
  a.each do |x|
    b = Array.new(a)
    b.delete(x)
    perms(*b).each do |d|
      p << [x] + d
      return p if p.size > 1_000_000 && p[0].size == 10
    end
  end
  return p
end

p = perms(0,1,2,3,4,5,6,7,8,9)
pp p[999_999]
