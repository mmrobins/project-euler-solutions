i = 3
fibonacci = [1, 1, 2]
while i.to_s.size < 1000
  fibonacci << i
  i = i + fibonacci[-2]
end

puts fibonacci.size + 1
