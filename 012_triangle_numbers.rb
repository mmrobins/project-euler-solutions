require 'factoring'
require 'pp'
require 'benchmark'

factors_size = 0
i = 1
triangle_number = 1

puts Benchmark.measure {
  until factors_size > 500
    i += 1
    triangle_number += i
    if (new_size = triangle_number.factors.size) > factors_size
      puts "#{triangle_number} #{new_size}"
      factors_size = new_size
    end
  end
}

puts triangle_number
