i = 3
fibonacci = [1, 2]
while i < 4_000_000
  fibonacci << i
  i = i + fibonacci[-2]
end

fibonacci.select {|n| n % 2 == 0}.inject {|sum, n | sum += n}

