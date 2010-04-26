require 'pp'
def perms(*a)
  x = a.pop
  return [[x]] if a.empty?
  p = []
  smaller_perms = perms(*a)
  smaller_perms.each do |sp|
    sp.each_index do |i|
      copy = Array.new(sp)
      p << copy.insert(i, x)
    end
    p << sp + [x]
  end
  return p
end

p = perms(0,1,2)
pp p
