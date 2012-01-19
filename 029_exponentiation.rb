terms = []

(2..100).each do |a|
  puts a
  (2..100).each do |b|
    terms << a**b
  end
end

puts terms.uniq.size
