# this is still too slow...
require 'divisors'
require 'sum_of'

abundant_numbers = (1..28123).select {|n| n.abundant?}

not_sum_of_abundant = []

(1..1000).to_a.reverse.each do |n|
  puts n
  not_sum_of_abundant << n unless n.sum_of?(abundant_numbers)
end

p not_sum_of_abundant

#TOP_NUM=1000
#abundant_numbers = (1..TOP_NUM).select {|n| n.abundant?}
#
#@nums = []
#def summy(x, numbers)
#  numbers.each do |n|
#    new_num = x + n
#    if new_num <= TOP_NUM
#      @nums << new_num
#      summy(new_num, numbers)
#    else
#      return
#    end
#  end
#end
#
#while !abundant_numbers.empty?
#  puts abundant_numbers.first
#  summy(abundant_numbers.first, abundant_numbers)
#  abundant_numbers.shift
#end
#
#puts @nums.uniq.inspect
