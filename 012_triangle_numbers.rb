require 'factoring'
require 'ruby-prof'
RubyProf.start
triangle_number = 1
tnum_with_factors = 0
(2..10_000_000).each do |n|
  triangle_number += n
  if triangle_number > 3000
    #puts factors.size + ' ' + triangle_number if factors.size > 200
    if factors.size > 100
      tnum_with_factors = triangle_number
      break
    end
  end
end
result = RubyProf.stop
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT, 0)
