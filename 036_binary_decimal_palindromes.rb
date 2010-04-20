sum = 0
(1..1_000_000).each do |n|
  binary = n.to_s(2)
  sum += n if n.to_s.reverse == n.to_s && binary.reverse == binary
end
puts sum
