(1..1000).inject {|sum, i| sum + i unless i % 3 || i % 5}
